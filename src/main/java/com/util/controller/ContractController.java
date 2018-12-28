package com.util.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.exec.ExportExcel;
import com.util.pojo.Contract;
import com.util.service.ContractService;


@Controller
public class ContractController {

	@Autowired
	private ContractService contractService;

	@RequestMapping("/hetong/selectAll.html")
	public String selectAll1(Model model, Contract contract) {

		List<Contract> list = contractService.selectAll(contract);
		model.addAttribute("contractNO", contract.getContractNO());
		model.addAttribute("contractStates", contract.getContractStates());
		model.addAttribute("contractType", contract.getContractType());
		model.addAttribute("deliveryType", contract.getDeliveryType());
		model.addAttribute("transportationType", contract.getTransportationType());
		model.addAttribute("list", list);
		return "hetong/selectAll";

	}

	@RequestMapping("/hetong/add")
	public String add(Contract contract, Model model) {
		if (contract != null) {
			contractService.addContract(contract);
			return "redirect:/hetong/selectAll.html";
		}
		return "";

	}

	@RequestMapping("/hetong/shenhe.html")
	public String shenhe(Model model, Contract contract) {
		List<Contract> list = contractService.selectshen(contract);
		model.addAttribute("list", list);

		return "hetong/shenhe";
	}

	@RequestMapping("/hetong/sh")
	public String updalte(int id) {
		contractService.he(id);
		return "redirect:/hetong/shenhe.html";
	}

	@RequestMapping("/hetong/zhix.html")
	public String zhix(Contract contract, Model model) {
		List<Contract> list = contractService.zhixing(contract);
		model.addAttribute("list", list);
		return "hetong/qingk";

	}

	@RequestMapping("/hetong/tongji.html")
	public String baobiao(Model model) {
		List<Contract> list = contractService.selectBB();
		model.addAttribute("list", list);
		return "hetong/tongji";

	}

	@RequestMapping("/hetong/xiangqing")
	public String selectid(int id, Model model) {
		List<Contract> list = contractService.selectid(id);
		model.addAttribute("list", list);
		return "hetong/xiangqing";

	}

	/*@RequestMapping(value = "UserExcelDownloads", method = RequestMethod.GET)
	public void downloadAllClassmate(HttpServletResponse response) throws IOException {
		List<Contract> classmateList = contractService.teacherinfor();
		String fileName = "userinf" + ".xls";// 设置要导出的文件的名字
		int rowNum = 1;
		 String[] headers = { "合同名称", "合同编号"};
		 for(int i=0;i<headers.length;i++){
	            HSSFCell cell = row.createCell(i);
	            HSSFRichTextString text = new HSSFRichTextString(headers[i]);
	            cell.setCellValue(text);
	        }
	}*/
	
	/*@ResponseBody
	@RequestMapping("/UserExcelDownloads")
	public int export(@RequestParam(required=false)String name,@RequestParam(required=false)String date){
		ExportExcel ee=new ExportExcel();
		//表
		String title="工作安排表";
		//地址与文件名
		String fileName="D:/work.xls";
		//集合
		List<Work> dataset=workSerice.workAll(name,date);
		//列
		String[] headers = { "编号", "员工名", "日期","班次","工作","备注" };
		//传过去
		int result=ee.exportExcel(title, headers, dataset,fileName);
		return result;
	}*/
}
