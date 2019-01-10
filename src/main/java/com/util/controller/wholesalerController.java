package com.util.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.util.pojo.*;
import com.util.service.wholesalerService;

@Controller
public class wholesalerController {

	@Autowired
	private wholesalerService wholesalerservice;

	@RequestMapping("/wholesaler")
	public String wholesaler() {
		return "juece/wholesaler";
	}

	@RequestMapping("/wholesalers")
	@ResponseBody
	public List<wholesaler> wholesalers() {
		List<wholesaler> list = wholesalerservice.wholesalers();
		return list;

	}
}
