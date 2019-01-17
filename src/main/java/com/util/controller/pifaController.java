package com.util.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.util.pojo.*;
import com.util.service.pifaService;

@Controller
public class pifaController {

	@Autowired
	private pifaService pifaservice;

	@RequestMapping("/pf")
	public String pifa() {
		return "juece/pfxiaoshoou";

	}

	@RequestMapping("/pfxs")
	@ResponseBody()
	public List<pifa> xiaoshu() {
		List<pifa> list = pifaservice.selectAll();
		for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).getName());
		}
		return list;

	}

	@RequestMapping("/pfjg")
	public String jiage() {
		return "juece/pfjiageaaa";

	}
}
