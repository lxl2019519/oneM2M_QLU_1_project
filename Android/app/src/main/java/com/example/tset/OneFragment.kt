package com.example.tset

import android.os.Build
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.annotation.RequiresApi
import androidx.fragment.app.Fragment
import androidx.fragment.app.viewModels
import androidx.lifecycle.Observer
import com.google.android.material.snackbar.Snackbar
import kotlinx.android.synthetic.main.fragment_one.*


/**
 * A simple [Fragment] subclass.
 * Use the [OneFragment.newInstance] factory method to
 * create an instance of this fragment.
 */
class OneFragment : Fragment() {
    private val myViewModel by viewModels<MyViewModel>()

    @RequiresApi(Build.VERSION_CODES.LOLLIPOP)
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        return inflater.inflate(R.layout.fragment_one, container, false)
    }

    override fun onActivityCreated(savedInstanceState: Bundle?) {
        super.onActivityCreated(savedInstanceState)

//        Intent(requireActivity(),cycleService::class.java).apply {
//            requireActivity().startService(this)
//        }

        myViewModel.utlBoxRes.observe(viewLifecycleOwner, Observer {
            myViewModel.fetchData(MyApplication.URL_UTL_BOX)
            val res = it.getJSONObject("m2m:cin")["con"].toString().split(":")[0]

            var t = res.toDouble() / 58
            t = (10.50 - t) * 28
            print(t)
            Box.text = String.format("%.2f", t)
        })
        myViewModel.ultBasinRes.observe(viewLifecycleOwner, Observer {
            myViewModel.fetchData(MyApplication.URL_UTL_BASIN)
            val res = it.getJSONObject("m2m:cin")["con"].toString().split(":")[0]
            var t = res.toDouble() / 58
            t = (22.50 - t) * 38
            basin.text = String.format("%.2f", t)

        })
        button3.setOnClickListener {
            Snackbar.make(
                requireActivity().findViewById(R.id.fragment_one),
                "正在加食,请稍后（づ￣3￣）づ╭❤～",
                Snackbar.LENGTH_SHORT
            ).show()

            myViewModel.sendData(requireActivity())
        }
//        doAsync {
//            while (true) {
//                myViewModel.fetchData(MyApplication.URL_UTL_BOX)
//                myViewModel.fetchData(MyApplication.URL_UTL_BASIN)
//                Thread.sleep(2000)
//            }
//
//        }
    }
}