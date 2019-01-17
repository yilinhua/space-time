package com.util.controller;

import java.util.List;
import com.util.pojo.*;
import com.util.service.xiaoshouService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class xiaoshouController {

	@Autowired
	private xiaoshouService xiaoshouservice;

	@RequestMapping("/xiaoshou")
	public String xiaoshou() {
		return "juece/cdi";

	}

	@RequestMapping("/xiaoshuT1")
	@ResponseBody
	public List<xiaoshou> xiaoshout() {
		List<xiaoshou> list = xiaoshouservice.list1();
		for (int i = 0; i < list.size(); i++) {
 			System.out.println(list.get(i).getFangshi());
		}
		return list;

	}
}
