package com.util.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.util.pojo.Check;
import com.util.pojo.Product;
import com.util.service.CheckService;
import com.util.service.ProductService;

@Controller
public class CheckController {
  
	@Autowired
	CheckService check;
	
	@Autowired
	ProductService product;
	
	@RequestMapping("/check")
	public String check(Model model,String check_type,String Drug_type,String start_time,String end_time){
		
		List<Check> list = check.selectAll(check_type,Drug_type,start_time,end_time);
		model.addAttribute("list", list);
		model.addAttribute("check_type", check_type);
		model.addAttribute("drug_type", Drug_type);
		return "kucun/check";
	}
	
	
	@RequestMapping("checkInsert")
	public String check(Check check){
       if(check.getCheck_type()==null){
    	   check.setCheck_type("0");
       }
		this.check.checkInsert(check);
		return "redirect:check";
	}
	
	
	
	@RequestMapping("/fenlei")
	@ResponseBody
	public String fenlei(String Drugs_type){
	 	List<Product>list=product.selectAll(null, Drugs_type);
	 	String html="";
	 	if(Drugs_type.equals("1")){
	     html="<td>中药名称：</td><td><select  name='check_type'>";	
	 	}else{
	 	 html="<td>西药名称：</td><td><select  name='check_type'>";	
	 	}
	 	for (int i = 0; i < list.size(); i++) {
			html+="<option value="+list.get(i).getTrade_name()+">"+list.get(i).getTrade_name()+"</option>";
		}
	        html+="</select></td>";
		return html;
	}
}
