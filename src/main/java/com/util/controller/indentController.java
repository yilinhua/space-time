package com.util.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.util.pojo.indent;
import com.util.service.indentService;

@Controller
public class indentController {

	@Autowired
	private indentService indentservice;

	@RequestMapping("/ding")
	public String ding() {
		return "juece/dingdan";
	}

	@RequestMapping("/dingdanxin")
	@ResponseBody
	public List<indent> dingdan() {
		List<indent> list = indentservice.selectAll();
		return list;

	}
}
