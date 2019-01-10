package com.util.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.sl.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.DataFormat;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.util.CellRangeAddress;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
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
	@RequestMapping("/test")
	public String te(){
		return "/jituanBB/test";
		
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
	public String baobiao(Model model, Contract contract) {
		List<Contract> list = contractService.selectBB(contract);
		contract.getContractStates();
		contract.getContractType();
		System.out.println(contract.getContractStates());
		model.addAttribute("list", list);
		return "hetong/tongji";

	}

	@RequestMapping("/hetong/xiangqing")
	public String selectid(int id, Model model) {
		List<Contract> list = contractService.selectid(id);
		model.addAttribute("list", list);
		return "hetong/xiangqing";

	}

	@RequestMapping("/exec")
	public String exec(Contract contract, String name,int contractType,int contractStates) {
		
		HSSFWorkbook workbook = new HSSFWorkbook();
		HSSFSheet sheet = workbook.createSheet("合同信息");
		contract.setContractType(contractType);
		contract.setContractStates(contractStates);
		// 起始行，起始列，结束行，结束列
		/* sheet.addMergedRegion(new CellRangeAddress(0,0,0,1)); */
		sheet.addMergedRegion(new CellRangeAddress(0, 0, 0, 2));
		HSSFRow row = sheet.createRow(0);
		List<Contract> list = contractService.teacherinfor(contract);
		HSSFCell cell = null;
		cell = row.createCell(0);
		cell.setCellValue("合同名称");
		cell = row.createCell(1);

		cell = row.createCell(2);

		cell = row.createCell(3);

		cell.setCellValue("合同编号");
		cell = row.createCell(4);
		cell.setCellValue("合同类型");
		cell = row.createCell(5);
		cell.setCellValue("合同状态");
		cell = row.createCell(6);
		cell.setCellValue("承办人");
		cell = row.createCell(7);
		cell.setCellValue("履行人");
		cell = row.createCell(8);
		cell.setCellValue("批准文号");

		String zhuan = "";
		String zhuangt = "";
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getContractType() != 0) {
				if (list.get(i).getContractType() == 1) {
					zhuan = "单项合同";
				}
				if (list.get(i).getContractType() == 2) {
					zhuan = "双相合同";
				}
				if (list.get(i).getContractStates() == 1) {
					zhuangt = "草稿";
				}
				if (list.get(i).getContractStates() == 2) {
					zhuangt = "会签";
				}
				if (list.get(i).getContractStates() == 3) {
					zhuangt = "待生效";
				}
				if (list.get(i).getContractStates() == 4) {
					zhuangt = "履行";
				}
				if (list.get(i).getContractStates() == 5) {
					zhuangt = "归档";
				}
				if (list.get(i).getContractStates() == 6) {
					zhuangt = "作废";
				}
				if (list.get(i).getContractStates() == 7) {
					zhuangt = "已变更";
				}
			}
			row = sheet.createRow(i + 1);
			cell = row.createCell(0);
			cell.setCellValue(list.get(i).getContractName());
			cell = row.createCell(3);
			cell.setCellValue(list.get(i).getContractNO());
			cell = row.createCell(4);
			cell.setCellValue(zhuan);
			cell = row.createCell(5);
			cell.setCellValue(zhuangt);
			cell = row.createCell(6);
			cell.setCellValue(list.get(i).getUndertakerName());
			cell = row.createCell(7);
			cell.setCellValue(list.get(i).getFeasorName());
			cell = row.createCell(8);
			cell.setCellValue(list.get(i).getApprovalNumber());
		}
		try {
			FileOutputStream fos = new FileOutputStream("D:/" + name + ".xls");
			
			workbook.write(fos);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "redirect:/hetong/tongji.html";
	}

}
