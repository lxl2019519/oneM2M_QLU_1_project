package com.example.tset

import android.annotation.SuppressLint
import android.app.Application
import android.content.Context

class MyApplication: Application() {
    companion object {
        //        private const val BASE_URL = "http://192.168.43.202:8080/server"
        //private const val BASE_URL = "http://101.42.104.122:8080/"
       private const val BASE_URL = "http://192.168.209.14:8090/"
        const val URL_LED = "$BASE_URL~/server/server/mydevice1/ultrasound/la"
        //const val URL_UTL_BASIN = "$BASE_URL/mydevice1/ultrasound/la"
        const val URL_UTL_BASIN = "$BASE_URL~/server/server/mydevice1/grainweight/la"
        //const val URL_UTL_BOX = "$BASE_URL/mydevice1/ultrasoundBox/la"
        const val URL_UTL_BOX = "$BASE_URL~/server/server/mydevice1/grainweight/la"
        //const val URL_ADD = "$BASE_URL/mydevice1/servo"
        const val URL_ADD = "$BASE_URL~/server/server/mydevice1/servo/la"
       // const val URL_WATER = "$BASE_URL/mydevice1/waterHigh/la"
       const val URL_WATER = "$BASE_URL~/server/server/mydevice1/waterHigh/la"

        @SuppressLint("StaticFieldLeak")
        lateinit var context:Context
    }
    override fun onCreate() {
        super.onCreate()
        context = applicationContext
    }
}