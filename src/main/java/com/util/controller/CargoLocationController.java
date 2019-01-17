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
import com.util.pojo.CargoLocation;
import com.util.pojo.Merchants;
import com.util.service.CargoLocationService;

@Controller
public class CargoLocationController {
  
	@Autowired
	CargoLocationService cargo;
	
	@RequestMapping("/cargo")
	public String cargo(Model model,String goodsName,@RequestParam(defaultValue="0")int ye){
		PageHelper.startPage(ye, 3);
		List<CargoLocation> list = cargo.selectAll(goodsName);
		PageInfo<CargoLocation> pageinfo = new PageInfo<CargoLocation>(list);
		model.addAttribute("list", list);
		model.addAttribute("goodsName", goodsName);
		model.addAttribute("total", pageinfo.getTotal()%3==0?pageinfo.getTotal()/3:pageinfo.getTotal()/3+1);
		model.addAttribute("yeMa", pageinfo.getPageNum());
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
