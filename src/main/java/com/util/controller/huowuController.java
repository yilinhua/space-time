package com.util.controller;

import java.util.List;
import com.util.pojo.*;
import com.util.service.huowuService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class huowuController {
	@Autowired
	private huowuService huowuservice;

	@RequestMapping("/huowu")
	public String huowu() {
		return "juece/huowu";
	}

	@RequestMapping("/huowut")
	@ResponseBody
	public List<huowu> huowut() {
		List<huowu> list = huowuservice.list();
		return list;

	}
}
