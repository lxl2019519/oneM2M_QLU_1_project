package com.example.tset

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.fragment.app.viewModels
import androidx.lifecycle.Observer
import com.google.android.material.snackbar.Snackbar
import kotlinx.android.synthetic.main.fragment_two.*


class TwoFragment : Fragment() {

    private val myViewModel by viewModels<MyViewModel>()

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        return inflater.inflate(R.layout.fragment_two, container, false)
    }

    override fun onActivityCreated(savedInstanceState: Bundle?) {
        super.onActivityCreated(savedInstanceState)


        myViewModel.utlWater.observe(viewLifecycleOwner, Observer {
            val res = it.getJSONObject("m2m:cin")["con"].toString()
            height.text = res
        })

        button2.setOnClickListener {

            Snackbar.make(
                requireActivity().findViewById(R.id.fragment_two),
                "正在获取ヽ(✿ﾟ▽ﾟ)ノ ✧(≖ ◡ ≖✿)",
                Snackbar.LENGTH_SHORT
            ).show()
            myViewModel.fetchDataWaterHigh(requireActivity())
        }
//        doAsync {
//            while (true) {
//                myViewModel.fetchData(URL_WATER)
//                Thread.sleep(2000)
//            }
//
//        }
    }
}