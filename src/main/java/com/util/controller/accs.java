package com.util.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.util.pojo.Access;
import com.util.service.AccessService;

@Controller
public class accs {

	@Resource
	private AccessService accessservice;

	@RequestMapping("/accessTest")
	public String accessTest() {
		return "jituanBB/accc";
	}

	@RequestMapping("/access")
	@ResponseBody
	public List<Access> access() {
		List<Access> list = accessservice.selectAll();
		return list;

	}

}
