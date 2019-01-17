package com.util.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.util.pojo.Invoice;
import com.util.service.InvoiceService;

@Controller
public class InvoiceController {
	@Autowired
	private InvoiceService invoiceService;
	
	@RequestMapping("/select")
	public String select(HttpSession session){
		List<Invoice>list=invoiceService.selectList();
		
		session.setAttribute("list",list);
		return "ylh/Invoice";
		
	}
	
	

}
