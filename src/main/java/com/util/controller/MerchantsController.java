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
import com.util.service.MerchantsService;

@Controller
public class MerchantsController {
	@Autowired
	MerchantsService merchants;

	@RequestMapping("/merchants")
	public String merchants(Model model, String name,String merchants_Type,@RequestParam(defaultValue="0")int ye) {
       
		
		PageHelper.startPage(ye, 5);
		
		List<Merchants> list = merchants.selectAll(name,merchants_Type);
        
        PageInfo<Merchants> pageinfo = new PageInfo<Merchants>(list);
        
		model.addAttribute("list", pageinfo.getList());
	
		model.addAttribute("namea", name);
		model.addAttribute("total", pageinfo.getTotal()%5==0?pageinfo.getTotal()/5:pageinfo.getTotal()/5	+1);
		model.addAttribute("yeMa", pageinfo.getPageNum());
        
		return "ziliao/merchants";
	}

	@RequestMapping("/merchantsdelete")
	@ResponseBody
	public String delete(int id) {
		if (merchants.delete(id) != 0) {

			return "1";
		}

		return "0";
	}

	@RequestMapping("/merchantschaId")
	public String chaId(Model model, int id) {

		Merchants merchants = this.merchants.chaId(id);
		model.addAttribute("merchants", merchants);
		model.addAttribute("update", "merchantsupdate");
		return "ziliao/update";
	}

	@RequestMapping("/merchantsupdate")
	public String update(Merchants merchants) {

		this.merchants.update(merchants);

		return "redirect:merchants";
	}

	@RequestMapping("merchantsInsert")
	public String merchantsInsert(Merchants merchants) {

		this.merchants.MerchantsInsert(merchants);
		return "redirect:merchants";
	}
}
