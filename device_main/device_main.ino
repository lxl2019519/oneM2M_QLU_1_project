#include <ESP8266WiFi.h>
#include <SimpleDHT.h>
#include "pinMapping.h"
#include "Timer.h"
#include <Servo.h>
#include "HX711.h"

///////////////Parameters/////////////////
// WIFI params
const char* ssid = "WPA2-Personal";
const char* password = "960919993";

// const char* host = "192.168.43.202";
const char* host = "192.168.172.14";
const int httpPort = 8090;

// AE params
const int aePort = 80;
//const char* aeIP = "http://linxi.free.vipnps.vip/";
const char* origin = "Cae-admin4";

// HX711 pins definition
const int LOADCELL_DOUT_PIN = 2; //D4 GPIO2
const int LOADCELL_SCK_PIN = 3;  //  GPIO3

// The status of each device
const char* LEDUltOFF = "LEDUltOFF";
const char* LEDUltON = "LEDUltON";
const char* LEDWaterOFF = "LEDUltOFF";
const char* LEDWaterON = "LEDUltON";
const char* ServoON = "ServoON";
const char* ServoOFF = "ServoOFF";

Timer t;
HX711 scale;
WiFiServer server(aePort);

//Ultrasonic pims definition
int ECHOPin = D2; 
int TRIGPin = D1;

//Servo pins definition
int servoPin = D6;

//DHT11 GPIO10
int pinDHT11 = 10;
SimpleDHT11 dht11(pinDHT11);

//Leds RedLed & BlueLed pins definition
int ledPinUlt = D5; //insufficiency of provisions GPIO14
int ledPinWater = D7; //Water shortage GPIO13

//Equipped with feeding action motor
Servo myservo;
void openServo();
void closeServo();

////////////////////////////////////
double waterHigh; //Variable of stored water level
int utlDistance;  //Storing ultrasonic ranging variables
float value_weight;  //Store the value of the load cell.
float value_weight_c;
void pushServoStatus(const char* status);

int Tem;
int Hum;
//relay switch
int ledPin = 15; 

void setup() {
    Serial.begin(115200);

    // Mapping steering gear pin
    pinMode(servoPin, OUTPUT);
    myservo.attach(servoPin);
    delay(10);

    // Mapping ultrasonic pins
    pinMode(ECHOPin, INPUT);
    pinMode(TRIGPin, OUTPUT);

    // Set the light mode
    pinMode(ledPinUlt, OUTPUT);
    pinMode(ledPinWater, OUTPUT);

    //Relay output mode
    pinMode(ledPin, OUTPUT);  
    Serial.println();

//---------------Wifi connection--------------
    // Connect to WIFI network
    Serial.print("Connecting to ");
    Serial.println(ssid);
    WiFi.persistent(false);
    WiFi.begin(ssid, password);
    // Connect process output .....
    while (WiFi.status() != WL_CONNECTED) {
        delay(500);
        Serial.print(".");
    }
    Serial.println();
    Serial.println("WiFi connected");
    Serial.println("IP address: ");
    Serial.println(WiFi.localIP());

    // Start HTTP server
    server.begin();
    Serial.println("Server started");

     // Create AE resource
     String resulat =
         send("/server", 2,
              "{\"m2m:ae\":{\"rn\":\"mydevice1\",\"api\":\"mydevice1.company."
              "com\",\"rr\":\"true\",\"poa\":[\"http://" +
                  WiFi.localIP().toString() + ":" + aePort + "\"]}}");

//    // Create AE resource
//    String resulat =
//        send("/server", 2, String() +
//             "{\"m2m:ae\":{\"rn\":\"mydevice1\",\"api\":\"mydevice1.company."
//             "com\",\"rr\":\"true\",\"poa\":[\"" + aeIP + "\"]}}");

    if (resulat == "HTTP/1.1 201 Created") {
		
        // Create Container resource ultrasound 
        send("/server/mydevice1", 3, "{\"m2m:cnt\":{\"rn\":\"ultrasound\"}}");

        // Create ContentInstance resource ultrasound
        send("/server/mydevice1/ultrasound", 4,
             "{\"m2m:cin\":{\"con\":\"0\"}}");


        // Create Container resource grainweight 
        send("/server/mydevice1", 3, "{\"m2m:cnt\":{\"rn\":\"grainweight\"}}");

        // Create ContentInstance resource grainweight
        send("/server/mydevice1/grainweight", 4,
             "{\"m2m:cin\":{\"con\":\"0\"}}");
 

        // Create Container resource waterHigh    
        send("/server/mydevice1", 3, "{\"m2m:cnt\":{\"rn\":\"waterHigh\"}}");

        // Create ContentInstance resource waterHigh
        send("/server/mydevice1/waterHigh", 4,
             "{\"m2m:cin\":{\"con\":\"0\"}}");

        // Create Container resource temperature &  humidity   
        send("/server/mydevice1", 3, "{\"m2m:cnt\":{\"rn\":\"temperature\"}}");

        // Create ContentInstance resource temperature
        send("/server/mydevice1/temperature", 4,
             "{\"m2m:cin\":{\"con\":\"0\"}}");

			 
        // Create Container resource ledUlt
        send("/server/mydevice1", 3, "{\"m2m:cnt\":{\"rn\":\"ledUlt\"}}");

        // Create ContentInstance resource ledUlt
        send("/server/mydevice1/ledUlt", 4, "{\"m2m:cin\":{\"con\":\"LEDUltON\"}}");

        // Create Container resource ledWater
        send("/server/mydevice1", 3, "{\"m2m:cnt\":{\"rn\":\"ledWater\"}}");

        // Create ContentInstance resource
        send("/server/mydevice1/ledWater", 4, "{\"m2m:cin\":{\"con\":\"LEDWaterOFF\"}}");

        // Create Container resource servo
        send("/server/mydevice1", 3, "{\"m2m:cnt\":{\"rn\":\"servo\"}}");

        // Create ContentInstance resource servo
        send("/server/mydevice1/servo", 4, "{\"m2m:cin\":{\"con\":\"ServoOFF\"}}");

        // Create Subscription resource ledUlt_sub
        send("/server/mydevice1/ledUlt", 23,
             "{\"m2m:sub\":{\"rn\":\"ledUlt_sub\",\"nu\":[\"Cae_device1\"],"
             "\"nct\":1}}");
        
        // Create Subscription resource ledWater_sub
        send("/server/mydevice1/ledWater", 23,
             "{\"m2m:sub\":{\"rn\":\"ledWater_sub\",\"nu\":[\"Cae_device1\"],"
             "\"nct\":1}}");

        // Create Subscription resource servo_sub
        send("/server/mydevice1/servo", 23,
             "{\"m2m:sub\":{\"rn\":\"servo_sub\",\"nu\":[\"Cae_device1\"],"
             "\"nct\":1}}");
    }

    t.every(1000 * 2, pushUltrasound);
    t.every(1000 * 2, pushWaterHigh);
    t.every(1000 * 2, pushTemperature);


}

// Method in charge of receiving event from the CSE
void loop() {
    t.update();
	
	
	/****************Red LED******************/
	value_weight_c = pushWeight();
    Serial.println(value_weight_c);
	if (value_weight_c < 10.00 ) 
   {
       digitalWrite(ledPinUlt, HIGH);
       Serial.println("LED点亮");
       delay(10);
       openServo(); delay(600); closeServo();delay(600);
       openServo();delay(600);closeServo();delay(600);
       openServo();delay(600);closeServo();delay(600);
       closeeServo();
       Serial.println("舵机转动");
     }
     if (value_weight_c > 10.00 )
     {  
       digitalWrite(ledPinUlt, LOW); 
	  }
  
    // Check if a client is connected
    WiFiClient client = server.available();
    if (!client) {
        return;
    }

    Serial.println("req2 -------------------");

    // Wait until the client sends some data
    Serial.println("new client");
    while (!client.available()) { //一直等到如果有数据可读取
        delay(1);
    }
    
    Serial.println("req3  -------------------");
    
    // Read the request
    String req = client.readString();
    Serial.println(req);
    client.flush();

////////////////////////////////////////////////////////////////////////////////
    // Switch the LEDUlt state according to the received value  
    if (req.indexOf(LEDUltON) != -1) {
        digitalWrite(ledPinUlt, HIGH);
    } else if (req.indexOf(LEDUltOFF) != -1) {
        digitalWrite(ledPinUlt, LOW);
    }

    // Switch the LEDWater state according to the received value
    if (req.indexOf(LEDWaterON) != -1) {
        digitalWrite(ledPinWater, HIGH);
    } else if (req.indexOf(LEDWaterOFF) != -1) {
        digitalWrite(ledPinWater, LOW);
    }

    // Switch the Servo state according to the received value
    if (req.indexOf(ServoON) != -1) {
        openServo();
        delay(1000*3);
        closeServo();
    }

    Serial.println("invalid request");
    client.stop();
    return;
    
    client.flush();

    // Send HTTP response to the client
    String s = "HTTP/1.1 200 OK\r\n";
    client.print(s);
    delay(1);
    Serial.println("Client disonnected");
}


 


// Method in charge of sending request to the CSE 该方法负责向CSE发送请求
String send(String url, int ty, String rep) {
    // Connect to the CSE address
    Serial.print("connecting to ");
    Serial.println(host);
    WiFiClient client;


    if (!client.connect(host, httpPort)) {
        Serial.println("connection failed");
        return "error";
    }


    // prepare the HTTP request
    String req = String() + "POST " + url + " HTTP/1.1\r\n" + "Host: " + host +
                 "\r\n" + "X-M2M-Origin: " + origin + "\r\n" +  // this is a key
                 "Content-Type: application/json;ty=" + ty + "\r\n" +
                 "Content-Length: " + rep.length() +
                 "\r\n"
                 "Connection: close\r\n\n" +
                 rep;

    Serial.println("req TEST------ :"  + req + "\n");
    // Send the HTTP request
    client.print(req);
    
    //超时处理
    unsigned long timeout = millis();
    while (client.available() == 0) {
        if (millis() - timeout > 5000) {
            Serial.println(">>> Client Timeout !");
            client.stop();
            return "error";
        }
    }

      Serial.println("555=====================");




    // Read the HTTP response
    String res = "";
    if (client.available()) {
        res = client.readStringUntil('\r');
        Serial.println("666=====================");
        Serial.print(res);
        Serial.println("777=====================");
    }
    while (client.available()) {
        String line = client.readStringUntil('\r');
        Serial.print(line);
        
    }

    Serial.println();
    Serial.println("closing connection");
    Serial.println("101010=====================");
    Serial.println();
    return res;
}






//发送超声波测到的数据
void pushUltrasound() {
	//触发测距
    digitalWrite(TRIGPin, LOW);
    delayMicroseconds(2);
    digitalWrite(TRIGPin, HIGH);
    delayMicroseconds(10);
    digitalWrite(TRIGPin, LOW);

    utlDistance = pulseIn(ECHOPin, HIGH) / 58;
    Serial.println("-------- 超声波测距 ----------");
    Serial.print(utlDistance);
	Serial.println("cm");
	Serial.println();  
	
	
    String data = String() + "{\"m2m:cin\":{\"con\":\"" + utlDistance + "\"}}";
    send("/server/mydevice1/ultrasound", 4, data);

    
}



//发送称重传感器测到的数据
float pushWeight() {
    scale.begin(LOADCELL_DOUT_PIN, LOADCELL_SCK_PIN);
	scale.read();  
	scale.read_average(20);
	scale.get_value(5);
	scale.get_units(5);  
	scale.set_scale(705457/900.f);   //  this value is obtained by calibetails
	scale.tare();              
	//Serial.println("weight:"); 
	scale.read();        
	scale.read_average(20);       
	scale.get_value(5);
	scale.get_units(5);        
	
	value_weight=scale.get_units(10);
    //Serial.println(value_weight/2.5 , 1);
    delay(100);
   
    value_weight=value_weight/2.5;
	
    Serial.println("---------- weight -----------");
    Serial.print(value_weight);
	Serial.println("g");
	Serial.println();
	
    String data = String() + "{\"m2m:cin\":{\"con\":\"" + value_weight + "\"}}";
    send("/server/mydevice1/grainweight", 4, data);
	
	return (value_weight);
    
}


// 水位传感器映射到A0
void pushWaterHigh() {
    double temp;
    temp = (long)analogRead(A0);
    waterHigh = (temp / 670) * 4;
    Serial.println("-------------- depth of water -------------");
    Serial.print(waterHigh);
    Serial.println("cm");
	  Serial.println();
	
	if (waterHigh < 5 ) 
   {
         //open GPIO 14, blue LED
		 digitalWrite(ledPinWater, HIGH);   
         // open GPIO15 D8 switch JDQ
		 digitalWrite(ledPin, HIGH);   
         //5S draw water
		 delay(5000); 
		 //stop draw water
         digitalWrite(ledPin, LOW);  
     }
     else{
         digitalWrite(ledPinWater, LOW);  }
		 
    String data = String() + "{\"m2m:cin\":{\"con\":\"" + waterHigh + "\"}}";
    send("/server/mydevice1/waterHigh", 4, data);
	
}

//发送温湿度传感器测到的数据
void pushTemperature() {
	byte temperature = 0;
	byte humidity = 0;
	int err = SimpleDHTErrSuccess;
	if ((err = dht11.read(&temperature, &humidity, NULL)) != SimpleDHTErrSuccess) {
		Serial.print("Read DHT11 failed, err="); Serial.println(err);delay(1000);
		return;
	  }
	Serial.println("--------------tem & hum ------------");
	Tem=(int)temperature;
	Hum=(int)humidity;
	Serial.print((int)temperature); 
	Serial.print(" *C, "); 
	Serial.print((int)humidity); 
	Serial.println(" H");
	String data = String() + "{\"m2m:cin\":{\"con\":\"" + Tem+ "+" +Hum + "\"}}";
	send("/server/mydevice1/temperature", 4, data);
}

void pushServoStatus(const char* status) {
    String data = String() + "{\"m2m:cin\":{\"con\":\"" + status + "\"}}";
    send("/server/mydevice1/servo", 4, data);
}

void openServo() {
    myservo.write(135);
}

void closeServo() {
  myservo.write(50);
}

void closeeServo() {
  myservo.write(90);
}

