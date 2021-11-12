package com.example.tset

import android.os.Bundle
import androidx.activity.viewModels
import androidx.appcompat.app.AppCompatActivity
import androidx.navigation.NavController
import androidx.navigation.findNavController
import androidx.navigation.ui.AppBarConfiguration
import androidx.navigation.ui.setupActionBarWithNavController
import kotlinx.android.synthetic.main.one_layout.*
import kotlinx.android.synthetic.main.two_layout.*

class MainActivity : AppCompatActivity() {
    private val myViewModel by viewModels<MyViewModel>()
    private lateinit var  navController: NavController
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
//        Intent(this,cycleService::class.java).apply {
//           startService(this)
//        }
        val destinationMap= mapOf(
            R.id.oneFragment to one_motion,
            R.id.twoFragment to two_motion
        )
        navController=findNavController(R.id.fragment)
        setupActionBarWithNavController(navController, AppBarConfiguration(destinationMap.keys));
        destinationMap.forEach{map->
            map.value.setOnClickListener{
                navController.navigate(map.key)
            }

        }
        navController.addOnDestinationChangedListener { controller, destination, arguments ->
            controller.popBackStack()

           destinationMap.values.forEach{
               it.progress=0f
           }
            destinationMap[destination.id]?.transitionToEnd()
        }
    }
}



