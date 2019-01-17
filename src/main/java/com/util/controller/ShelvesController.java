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
import com.util.pojo.Shelves;

import com.util.service.ShelvesService;

@Controller
public class ShelvesController {

	  
	@Autowired
	ShelvesService shelves;
	
	@RequestMapping("/shelves")
	public String shelves(Model model,String number,@RequestParam(defaultValue="0")int type,@RequestParam(defaultValue="0")int state,
			@RequestParam(defaultValue="0")int ye){
		PageHelper.startPage(ye, 3);
		List<Shelves> list = shelves.selectAll(number,type,state);
		PageInfo<Shelves> pageinfo = new PageInfo<Shelves>(list);
		model.addAttribute("list", list);
		model.addAttribute("number", number);
		model.addAttribute("type", type);
		model.addAttribute("state", state);
		model.addAttribute("total", pageinfo.getTotal()%3==0?pageinfo.getTotal()/3:pageinfo.getTotal()/3+1);
		model.addAttribute("yeMa", pageinfo.getPageNum());
		return "kucun/shelves";
	}
	
	@RequestMapping("/shelvesdelete")
	@ResponseBody
	public String delete(int id){
		if(shelves.delete(id)!=0){
			
			return "1";
		}
		
		return "0";
	}
	@RequestMapping("/shelveschaId")
	public String shelves(Model model,int id,String pd){
		Shelves ca = shelves.chaId(id);
	    model.addAttribute("ca", ca);
	    if(pd.equals("1")){
	    	model.addAttribute("update", "shelvesUpdate");	
	    	return "ziliao/update";
	    }else{
	    	model.addAttribute("update", "tijiao");	
	    	return "kucun/baoSun";
	    }
		
	
		
	}
	
	@RequestMapping("/shelvesupdate")
	public String update(Shelves shelves){
		
		this.shelves.update(shelves);
		
		return "redirect:shelves";
	}
	
	@RequestMapping("shelvesInsert")
	public String shelvesInsert(Shelves shelves){
               
               this.shelves.shelvesInsert(shelves);
		return "redirect:shelves";
	}

}
