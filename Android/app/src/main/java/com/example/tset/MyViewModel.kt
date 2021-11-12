package com.example.tset

import android.app.Application
import android.util.Log
import androidx.fragment.app.FragmentActivity
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import com.android.volley.Response
import com.android.volley.toolbox.JsonObjectRequest
import com.example.tset.MyApplication.Companion.URL_ADD
import com.example.tset.MyApplication.Companion.URL_UTL_BASIN
import com.example.tset.MyApplication.Companion.URL_UTL_BOX
import com.example.tset.MyApplication.Companion.URL_WATER
import com.google.android.material.snackbar.Snackbar
import org.json.JSONObject

class MyViewModel(application: Application) : AndroidViewModel(application) {
    private val _ledRes = MutableLiveData<JSONObject>()//定义数据类型
    private val _utlBasinRes = MutableLiveData<JSONObject>()
    private val _utlBoxRes = MutableLiveData<JSONObject>()
    private val _utlWaterRes = MutableLiveData<JSONObject>()


    val ledRes: LiveData<JSONObject> = _ledRes
    val ultBasinRes: LiveData<JSONObject> = _utlBasinRes
    val utlBoxRes: LiveData<JSONObject> = _utlBoxRes
    val utlWater: LiveData<JSONObject> = _utlWaterRes

    init {
        fetchData(URL_UTL_BOX)
        fetchData(URL_UTL_BASIN)
        fetchData(URL_WATER)
    }


    fun sendData(fragment: FragmentActivity) {

        val jsonObject = JSONObject().apply {
            val t = JSONObject()
            t.put("con", "ServoON")
            put("m2m:cin", t)
        }
        Log.d("hello", "sendData: $jsonObject")

        object : JsonObjectRequest(
            Method.POST, URL_ADD, jsonObject,
            Response.Listener { response ->
                Snackbar.make(
                    fragment.findViewById(R.id.fragment_one),
                    "已给宠物加食（づ￣3￣）づ╭❤～",
                    Snackbar.LENGTH_SHORT
                ).show()
                Log.d("hello", "sendData: $response")
            },
            Response.ErrorListener { error ->
                Snackbar.make(
                    fragment.findViewById(R.id.fragment_one),
                    "加食失败，请重试！或检测网络原因（づ￣3￣）づ╭❤～",
                    Snackbar.LENGTH_SHORT
                ).show()
                Log.d("hello", "sendData: $error")
            }
        ) {
            override fun getHeaders(): MutableMap<String, String> {
                val headers: MutableMap<String, String> = HashMap()
                headers["Charset"] = "UTF-8"
                headers["Accept"] = "application/json"
                headers["Content-Type"] = "application/vnd.onem2m-res+json; ty=4"
                //headers["X-M2M-RI"] = "12345"
                headers["X-M2M-Origin"] = "Cae-admin"

                return headers
            }
        }.also {
            VolleySingleton.getInstance(getApplication()).requestQueue.add(it)
        }

    }

// 将这个request加入到request


    fun fetchData(url: String) {
        object : JsonObjectRequest(
            Method.GET, url, null,
            Response.Listener { response ->
                if (url == URL_UTL_BOX) {
                    Log.d("hello", "fetchData: url_led")
                    _utlBoxRes.value = response
                } else if (url == URL_UTL_BASIN) {
                    Log.d("hello", "fetchData: url_lui")
                    _utlBasinRes.value = response
                } else if (url == URL_WATER) {
                    Log.d("hello", "fetchData: url_water")
                    _utlWaterRes.value = response
                }
            },
            Response.ErrorListener { error ->
                Log.d("hello", "onCreate: $error")
                Log.d("hello", "fetchData: $URL_UTL_BOX")
                // TODO: Handle error
            }
        ) {
            override fun getHeaders(): MutableMap<String, String> {
                val headers: MutableMap<String, String> = HashMap()
                headers["Charset"] = "UTF-8"
                headers["Accept"] = "application/json"
                headers["X-M2M-Origin"] = "Cae-admin5"
                return headers
            }
        }.also {
            VolleySingleton.getInstance(getApplication()).requestQueue.add(it)
        }

    }

    fun fetchDataWaterHigh(fragment: FragmentActivity) {
        object : JsonObjectRequest(
            Method.GET, URL_WATER, null,
            Response.Listener { response ->
                _utlWaterRes.value = response
                Snackbar.make(
                    fragment.findViewById(R.id.fragment_two),
                    "已获取水位状态（づ￣3￣）づ╭❤～",
                    Snackbar.LENGTH_SHORT
                ).show()
            },
            Response.ErrorListener { error ->
                Log.d("hello", "onCreate: $error")
                Snackbar.make(
                    fragment.findViewById(R.id.fragment_two),
                    "加食失败，请重试！或检测网络原因（づ￣3￣）づ╭❤～",
                    Snackbar.LENGTH_SHORT
                ).show()
                // TODO: Handle error
            }
        ) {
            override fun getHeaders(): MutableMap<String, String> {
                val headers: MutableMap<String, String> = HashMap()
                headers["Charset"] = "UTF-8"
                headers["Accept"] = "application/json"
                headers["X-M2M-Origin"] = "admin:admin"
                return headers
            }
        }.also {
            VolleySingleton.getInstance(getApplication()).requestQueue.add(it)
        }

    }

}