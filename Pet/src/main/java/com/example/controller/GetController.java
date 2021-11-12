package com.example.controller;

//import cn.hutool.json.JSONObject;
import cn.hutool.core.date.DateUtil;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.example.common.Result;
import com.example.entity.Notice;
import com.example.service.NoticeService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Date;

/**
 * @author by ZhaoKun
 * @version 1.0
 * @date 2021-10-11 10:24
 *
 *Get the data in the CSE in onem2m on the web
 *
 */
@RestController
@RequestMapping("/api/get")
public class GetController {

    @Resource
    private NoticeService noticeService;
    String ult = null;
    String water = null;
    String tem = null;
    String hum = null;

    @PostMapping
//    @GetMapping("/ult")
    public cn.hutool.json.JSONObject get() {

        //猫粮存储量
        String str =get111("http://192.168.209.14:8090/~/server/server/mydevice1/grainweight/la", "");
        JSONObject object = JSONObject.parseObject(str);  //将结果转化成json格式
        JSONObject object1=  (JSONObject) object.get("m2m:cin");
        ult = (String)object1.get("con");
//        Object con = object1.get("con");
        System.out.println("ult"+ult+"获取成功。");
        cn.hutool.json.JSONObject jsonObject = new cn.hutool.json.JSONObject();

        //储存水量
        String water1 =get111("http://192.168.209.14:8090/~/server/server/mydevice1/waterHigh/la", "");
        JSONObject waterobject = JSONObject.parseObject(water1);  //将结果转化成json格式
        JSONObject waterobject1=  (JSONObject) waterobject.get("m2m:cin");
        water = (String)waterobject1.get("con");
        System.out.println("water"+water+"获取成功。");

        //温湿度
        String temp1 = get111("http://192.168.209.14:8090/~/server/server/mydevice1/temperature/la", "");
        JSONObject tempobject = JSONObject.parseObject(temp1);
        JSONObject tempobject1=  (JSONObject) tempobject.get("m2m:cin");
        String temp = (String)tempobject1.get("con");
        System.out.println("temp"+temp+"获取成功。");

        String[] split = temp.split("\\+");
        for (int i = 0; i < split.length; i++) {
            if (i==0){
                tem = split[0];
            }
            else if (i==1){
                hum = split[1];
            }
        }

        System.out.println(tem+"==="+hum);

        jsonObject.set("ult", ult);
        jsonObject.set("water", water);
        jsonObject.set("tem", tem);
        jsonObject.set("hum", hum);

        return jsonObject;
    }

//    @PostMapping
//    public Result<?> save(@RequestBody Notice notice) {
//        notice.setContent(ult);
//        return Result.success(noticeService.save(notice));
//    }
//    @PutMapping
//    public Result<?> update(@RequestBody Notice notice) {
//        return Result.success(noticeService.updateById(notice));
//    }



    public static String get111(String path, String data) {
        String str = "";
        String str1="";
        try {
            URL url = new URL(path);
            //打开和url之间的连接
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            PrintWriter out = null;

            /**设置URLConnection的参数和普通的请求属性****start***/

            conn.setRequestProperty("accept", "*/*");
            conn.setRequestProperty("connection", "Keep-Alive");
            conn.setRequestProperty("user-agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)");
            conn.setRequestProperty("Accept","application/json");
            conn.setRequestProperty("X-M2M-Origin", "admin:admin");
            /**设置URLConnection的参数和普通的请求属性****end***/

            //设置是否向httpUrlConnection输出，设置是否从httpUrlConnection读入，此外发送post请求必须设置这两个
            //最常用的Http请求无非是get和post，get请求可以获取静态页面，也可以把参数放在URL字串后面，传递给servlet，
            //post与get的 不同之处在于post的参数不是放在URL字串里面，而是放在http请求的正文内。
            conn.setDoOutput(true);
            conn.setDoInput(true);

            conn.setRequestMethod("GET");//GET和POST必须全大写
            /**GET方法请求*****start*/
            /**
             * 如果只是发送GET方式请求，使用connet方法建立和远程资源之间的实际连接即可；
             * 如果发送POST方式的请求，需要获取URLConnection实例对应的输出流来发送请求参数。
             * */
            conn.connect();

            /**GET方法请求*****end*/

            /***POST方法请求****start*/

            /*out = new PrintWriter(conn.getOutputStream());//获取URLConnection对象对应的输出流

            out.print(data);//发送请求参数即数据

            out.flush();//缓冲数据
            */
            /***POST方法请求****end*/

            //获取URLConnection对象对应的输入流
            InputStream is = conn.getInputStream();
            //构造一个字符流缓存
            BufferedReader br = new BufferedReader(new InputStreamReader(is));

            while ((str = br.readLine()) != null) {
                str = new String(str.getBytes(), "UTF-8");//解决中文乱码问题
                //这里的str就是获取的数据
                str1=str1+str;
//                System.out.println(str);
            }

            //关闭流
            is.close();
            //断开连接，最好写上，disconnect是在底层tcp socket链接空闲时才切断。如果正在被其他线程使用就不切断。
            //固定多线程的话，如果不disconnect，链接会增多，直到收发不出信息。写上disconnect后正常一些。
            conn.disconnect();
            System.out.println("完整结束");

        } catch (Exception e) {
            e.printStackTrace();
        }
        return str1;
    }

}
