package com.util.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.util.pojo.Warehousing;
import com.util.service.WarehousingService;
@Controller
public class WarehousingController {
	@Autowired
	private WarehousingService warehousingService;
	@RequestMapping("/selectLists")
	public String select(HttpSession session){
        List<Warehousing>list=warehousingService.selectList();
        session.setAttribute("list", list);
		return "ylh/Warehousing";
		
	}

}
