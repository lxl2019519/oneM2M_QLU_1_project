package com.example.tset

import android.app.NotificationChannel
import android.app.NotificationManager
import android.content.Context
import android.content.Intent
import android.os.Build
import android.os.IBinder
import android.util.Log
import androidx.core.app.NotificationCompat
import androidx.lifecycle.LifecycleService
import androidx.lifecycle.lifecycleScope
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
const val CHANNEL_ID="pet ID"
class cycleService : LifecycleService() {
    private var number=0
    override fun onCreate() {
        super.onCreate()
        lifecycleScope.launch {
            while (true){
                delay(1_000)//delay1ms
                Log.d("hello","notification oncreate")
            }
        }
        createChannel()//创建通道，创建通知
//        val pendingIntent=PendingIntent.getActivity(
//            this,0,Intent(this,MainActivity::class.java),
//            0
//        )
        val  notification=NotificationCompat.Builder(this, CHANNEL_ID)
            .setSmallIcon(R.drawable.ic_baseline_fastfood)
            .setContentTitle("宠物喂养机")
            .setContentText("您的小宠物粮食不足了,快去喂它吧！")
            .build()
            //.setContentIntent(pendingIntent)//中介启动一个activity

        startForeground(1,notification)

    }
    override fun onBind(intent: Intent): IBinder {
        super.onBind(intent)
        TODO("Return the communication channel to the service.")
    }
    private fun createChannel(){
       if(Build.VERSION.SDK_INT >= Build.VERSION_CODES.O){
           val  name="My Notification"
           val importance =NotificationManager.IMPORTANCE_DEFAULT//通知级别  有声音
           val mChannel =NotificationChannel(CHANNEL_ID,name,importance)
           val notificationManager=getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
           notificationManager.createNotificationChannel(mChannel)
       }
    }
}
