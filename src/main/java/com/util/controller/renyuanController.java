package com.util.controller;

import java.util.List;
import com.util.pojo.*;
import com.util.service.renyuanService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class renyuanController {

	@Autowired
	private renyuanService renyuanservice;

	@RequestMapping("/renyuan")
	public String renyuan() {
		return "juece/renyuan";

	}

	@RequestMapping("/renyuanT")
	@ResponseBody
	public List<renyuan> renyuanTest() {
		List<renyuan> list = renyuanservice.list();
		return list;

	}
	@RequestMapping("/xint")
	public String xint(){
		return "juece/xin";
	}
}
