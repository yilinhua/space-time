package com.util.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.pojo.Merchants;
import com.util.pojo.Product;
import com.util.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductService product;
	
	@RequestMapping("/product")
	public String cargo(Model model,String TradeName,String Drugs_type,@RequestParam(defaultValue="0")int ye){
		PageHelper.startPage(ye, 3);
		List<Product> list = product.selectAll(TradeName,Drugs_type);
		PageInfo<Product> pageinfo = new PageInfo<Product>(list);
		System.out.println(list.get(0).getManufacturer());
		model.addAttribute("list", list);
		model.addAttribute("TradeName", TradeName);
		model.addAttribute("total", pageinfo.getTotal()%3==0?pageinfo.getTotal()/3:pageinfo.getTotal()/3+1);
		model.addAttribute("yeMa", pageinfo.getPageNum());
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
