package com.util.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.util.pojo.*;
import com.util.service.retailService;

@Controller
public class retailController {

	@Autowired
	private retailService retailservice;

	@RequestMapping("/retail")
	public String retail() {
		return "juece/retail";

	}

	@RequestMapping("/retails")
	@ResponseBody
	public List<retail> retails() {
		List<retail> list = retailservice.retail();
		return list;
	}
}
