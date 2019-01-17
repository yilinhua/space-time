package com.util.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.util.pojo.Staff;
import com.util.service.StaffService;

@Controller
public class StaffController {
	@Autowired
	StaffService staff;
	
	@RequestMapping("/staff")
	public String staff(Model model,String name,String code){
		
		List<Staff> list = staff.selectAll(name,code);
		
		                    
		model.addAttribute("list", list);
		model.addAttribute("name", name);
		model.addAttribute("code", code);
		return "ziliao/staff";
	}
	
	@RequestMapping("/staffdelete")
	@ResponseBody
	public String delete(int id){
		if(staff.delete(id)!=0){
			
			return "1";
		}
		
		return "0";
	}
	@RequestMapping("/staffchaId")
	public String chaId(Model model,int id){
	    
		Staff sta = staff.chaId(id);
	    model.addAttribute("sta", sta);
		model.addAttribute("update", "staffupdate");
		return "ziliao/update";
	}
	
	@RequestMapping("/staffupdate")
	public String update(Staff staff){
		
		this.staff.update(staff);
		
		return "redirect:staff";
	}
	
	@RequestMapping("staffInsert")
	public String staffInsert(Staff staff){

		this.staff.StaffInsert(staff);
		return "redirect:staff";
	}
}
