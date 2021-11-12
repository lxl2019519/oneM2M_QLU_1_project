package com.example.controller;

import com.alibaba.fastjson.JSONObject;
import com.example.service.NoticeService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 * @author by ZhaoKun
 * @version 1.0
 * @date 2021-10-25 14:32
 *
 * Post the data in the CSE in onem2m on the web
 */
@RestController
@RequestMapping("/api/post")
public class PostController {
    @Resource
    private NoticeService noticeService;

    @PostMapping
    public cn.hutool.json.JSONObject aaa(){
        cn.hutool.json.JSONObject jsonObject = new cn.hutool.json.JSONObject();
        String body= "{'m2m:cin': {'con': 'ServoON'}}";
//        String servo1 = sendPost("http://192.168.43.202:8080/server/mydevice1/servo", body);
        String servo1 = sendPost("http://101.42.104.122:8080/server/mydevice1/servo", body);
        //post 415可能是请求头的问题  400可能是传的参数格式
        //将结果转化成json格式
        JSONObject object = JSONObject.parseObject(servo1);
        JSONObject object1=  (JSONObject) object.get("m2m:cin");
        String servo =(String)object1.get("con");

        jsonObject.set("msg", servo);
        return jsonObject;
    }



    public static String sendPost(String url, String param) {
        PrintWriter out = null;
        BufferedReader in = null;
        String result = "";
        try {
            URL realUrl = new URL(url);
            // 打开和URL之间的连接
            HttpURLConnection conn = (HttpURLConnection) realUrl.openConnection();
            conn.setDoOutput(true);
            conn.setDoInput(true);
            conn.setRequestMethod("POST");
            conn.setUseCaches(false);
            conn.setInstanceFollowRedirects(true);
            // 设置通用的请求属性
            conn.setRequestProperty("accept", "*/*");
            conn.setRequestProperty("connection", "Keep-Alive");
//            conn.setRequestProperty("Content-Type", "application/json;charset=utf-8");
            conn.setRequestProperty("Content-Type", "application/vnd.onem2m-res+json;ty=4;charset=utf-8");
            conn.setRequestProperty("Accept","application/json");
            conn.setRequestProperty("X-M2M-RI","12345");
//            conn.setRequestProperty("X-M2M-RI","/in-cse/CAE439322528");
//            conn.setRequestProperty("X-M2M-Origin","Cae_web1");
            conn.setRequestProperty("X-M2M-Origin","Cae-admin5");

            conn.connect();

            OutputStreamWriter outputStreamWriter =
                    new OutputStreamWriter(conn.getOutputStream(), "utf-8");
            out = new PrintWriter(outputStreamWriter);
            //转化json格式字符串
            JSONObject jsonObject = JSONObject.parseObject(param);
            out.print(jsonObject);
            // flush输出流的缓冲
            out.flush();
            out.close();
            //查看状态码
            int responseCode = conn.getResponseCode();
            // 定义BufferedReader输入流来读取URL的响应
            in = new BufferedReader(
                    new InputStreamReader(conn.getInputStream()));
            String line;
            while ((line = in.readLine()) != null) {
                result += line;
            }
        } catch (Exception e) {
            System.out.println("发送 POST 请求出现异常！" + e);
            e.printStackTrace();
        }
        //使用finally块来关闭输出流、输入流
        finally {
            try {
                if (out != null) {
                    out.close();
                }
                if (in != null) {
                    in.close();
                }
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
        return result;
    }
}
