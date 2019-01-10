package com.util.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.util.pojo.Product;
import com.util.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductService product;
	
	@RequestMapping("/product")
	public String cargo(Model model,String TradeName,String Drugs_type){
		
		List<Product> list = product.selectAll(TradeName,Drugs_type);
		model.addAttribute("list", list);
		model.addAttribute("TradeName", TradeName);
		return "ziliao/product";
	}
	
	@RequestMapping("/productdelete")
	@ResponseBody
	public String delete(int id){
		if(product.delete(id)!=0){
			
			return "1";
		}
		
		return "0";
	}
	@RequestMapping("/productchaId")
	public String chaId(Model model,int id){
	    
		Product pro = product.chaId(id);
	    model.addAttribute("pro", pro);
	    model.addAttribute("update", "proupdate");
		return "ziliao/update";
	}
	
	@RequestMapping("/productupdate")
	public String update(Product product){
		System.out.println(11);
		this.product.update(product);
		
		return "redirect:product";
	}
	
	@RequestMapping("productInsert")
	public String huoWeiInsert(Product product){
	
		this.product.productInsert(product);
		return "redirect:product";
	}
}
