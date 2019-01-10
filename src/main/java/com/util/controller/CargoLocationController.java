package com.util.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.util.pojo.CargoLocation;
import com.util.service.CargoLocationService;

@Controller
public class CargoLocationController {
  
	@Autowired
	CargoLocationService cargo;
	
	@RequestMapping("/cargo")
	public String cargo(Model model,String goodsName){
		
		List<CargoLocation> list = cargo.selectAll(goodsName);
		model.addAttribute("list", list);
		model.addAttribute("goodsName", goodsName);
		return "ziliao/cargo";
	}
	
	@RequestMapping("/cargodelete")
	@ResponseBody
	public String delete(int id){
		if(cargo.delete(id)!=0){
			
			return "1";
		}
		
		return "0";
	}
	@RequestMapping("/cargochaId")
	public String chaId(Model model,int id){
	    
		CargoLocation ca = cargo.chaId(id);
	    model.addAttribute("ca", ca);
		model.addAttribute("update", "cargoupdate");
		return "ziliao/update";
	}
	
	@RequestMapping("/cargoupdate")
	public String update(CargoLocation cargo){
		
		this.cargo.update(cargo);
		
		return "redirect:cargo";
	}
	
	@RequestMapping("huoWeiInsert")
	public String huoWeiInsert(CargoLocation cargo){

		this.cargo.huoWeiInsert(cargo);
		return "redirect:cargo";
	}
}
