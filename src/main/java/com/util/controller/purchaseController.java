package com.util.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.util.pojo.purchase;
import com.util.service.purchaseService;

@Controller
public class purchaseController {

	@Autowired
	private purchaseService purchaseservice;

	@RequestMapping("/shul")
	public String pur() {
		return "juece/size";
	}

	@RequestMapping("/shuliang")
	@ResponseBody
	public List<purchase> shulian() {
		List<purchase> list = purchaseservice.size1();
		for (purchase purchase : list) {
			System.out.println(purchase.getSize());
		}
		return list;
	}

	@RequestMapping("/jin")
	public String jin() {
		return "juece/jine";

	}

	@RequestMapping("/jines")
	@ResponseBody
	public List<purchase> jine() {
		List<purchase> list = purchaseservice.size1();
		return list;
	}
}
