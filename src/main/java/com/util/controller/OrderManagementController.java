package com.util.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.util.pojo.order;
import com.util.service.OrderManagementService;
@Controller
public class OrderManagementController {
	
	@Autowired
	private OrderManagementService orderManagementService;
	
	@RequestMapping("/selectList")
	public String select(HttpSession session){
		
		List<order> list=orderManagementService.selectList();
		session.setAttribute("list", list);
		return "ylh/OrderManagement";
		
	}

}
