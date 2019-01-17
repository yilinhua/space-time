package com.util.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.util.pojo.retreat;
import com.util.service.retreatService;

@Controller
public class retreatController {

	@Autowired
	private retreatService retreatService;

	@RequestMapping("/top")
	public String top() {
		return "juece/topt";

	}

	@RequestMapping("/topTest")
	@ResponseBody
	public List<retreat> topt() {
		List<retreat> list = retreatService.top();
		return list;

	}

	@RequestMapping("/qingk")
	@ResponseBody
	public List<retreat> qingk() {
		List<retreat> list1 = retreatService.name1();
		return list1;
	}

	@RequestMapping("/tou1")
	public String top1() {
		return "juece/thqk";
	}
}
