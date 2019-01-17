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
import com.util.pojo.Caustic_excessive;

import com.util.service.Caustic_excessiveService;

@Controller
public class Caustic_excessiveController {

	  
	@Autowired
	Caustic_excessiveService caustic;
	
	@RequestMapping("/caustic")
	public String caustic(Model model,String type,String shelves_number,String start_time,String end_time,@RequestParam(defaultValue="0")int ye){
		
		PageHelper.startPage(ye, 3);
		List<Caustic_excessive> list = caustic.selectAll(type, shelves_number,start_time,end_time);
		PageInfo<Caustic_excessive> pageinfo = new PageInfo<Caustic_excessive>(list);
		model.addAttribute("list", list);
		model.addAttribute("type", type);
		model.addAttribute("shelves_number", shelves_number);
		model.addAttribute("total", pageinfo.getTotal()%3==0?pageinfo.getTotal()/3:pageinfo.getTotal()/3+1);
		model.addAttribute("yeMa", pageinfo.getPageNum());
		return "kucun/caustic_excessive";
	}
	
	@RequestMapping("/causticdelete")
	@ResponseBody
	public String delete(int id){
		if(caustic.delete(id)!=0){
			
			return "1";
		}
		
		return "0";
	}
	@RequestMapping("/causticchaId")
	public String chaId(Model model,int id){
	    
		Caustic_excessive ca = caustic.chaId(id);
	    model.addAttribute("ca", ca);
		model.addAttribute("update", "s");
		return "ziliao/update";
	}
	
	@RequestMapping("/causticupdate")
	public String update(Caustic_excessive cargo){
		
		this.caustic.update(cargo);
		
		return "redirect:caustic";
	}
	
	@RequestMapping("causticInsert")
	public String causticInsert(Caustic_excessive caustic){
        
		this.caustic.Caustic_excessiveInsert(caustic);
		return "redirect:caustic";
	}

	
}
