
#include "dev/dev.h"
#include "dev/dev_lcd.h"
#include "sys/sys.h"

#include <stdio.h>

#include "image_data.h"

//-----------------------------------------------------------------------------

void show_image() {
    uint16_t x,y;
    for (y=0;y<IMAGE_HEIGHT*2;y++) {
    	for (x=0;x<IMAGE_WIDTH*2;x++) {
    		LCD_Fast_DrawPoint(x,y,image_data[y>>1][x>>1]);
    	}
    }
}

//-----------------------------------------------------------------------------
char buffer[128];

int main(void) {
	sys_tick_init();
	dev_led_init();
	LCD_Init();

	show_image();

	int count = 0 ;
    while (1) {  // ·´¸´Ö´ÐÐ
        if ( count & 0x0001 )  dev_led_enable(0);  else  dev_led_disable(0);
        if ( count & 0x0002 )  dev_led_enable(1);  else  dev_led_disable(1);

        //snprintf(buffer,128,"Message %4d", count);
        //LCD_ShowString(32,32,200,16,16,(unsigned char*)buffer);

        count++ ;
        //mydelay_ms( 500 );
        sys_tick_delay_ms( 500 );
    }

    return 0;
}

