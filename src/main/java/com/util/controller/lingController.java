package com.util.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.util.pojo.ling;
import com.util.service.lingService;

@Controller
public class lingController {

	@Autowired
	private lingService lingService;

	@RequestMapping("/lingTest")
	@ResponseBody
	public List<ling> ling() {
		List<ling> list = lingService.selectAll();
		return list;

	}

	@RequestMapping("/lingS")
	public String lingS() {
		return "juece/ssa";

	}

	@RequestMapping("/jiage")
	public String jiage() {
		return "juece/jiageaaa";

	}

}
