package com.util.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.sl.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.DataFormat;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Workbook;
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
	public String baobiao(Model model,Contract contract) {
		List<Contract> list = contractService.selectBB(contract);
		contract.getContractStates();
		contract.getContractType();
		model.addAttribute("list", list);
		return "hetong/tongji";

	}

	@RequestMapping("/hetong/xiangqing")
	public String selectid(int id, Model model) {
		List<Contract> list = contractService.selectid(id);
		model.addAttribute("list", list);
		return "hetong/xiangqing";

	}

	/*
	 * @RequestMapping(value = "UserExcelDownloads", method = RequestMethod.GET)
	 * public void downloadAllClassmate(HttpServletResponse response) throws
	 * IOException { List<Contract> classmateList =
	 * contractService.teacherinfor(); String fileName = "userinf" + ".xls";//
	 * 设置要导出的文件的名字 int rowNum = 1; String[] headers = { "合同名称", "合同编号"}; for(int
	 * i=0;i<headers.length;i++){ HSSFCell cell = row.createCell(i);
	 * HSSFRichTextString text = new HSSFRichTextString(headers[i]);
	 * cell.setCellValue(text); } }
	 */

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping("/UserExcelDownloads") public int
	 * export(@RequestParam(required=false)String
	 * name,@RequestParam(required=false)String date){ ExportExcel ee=new
	 * ExportExcel(); //表 String title="工作安排表"; //地址与文件名 String
	 * fileName="D:/work.xls"; //集合 List<Work>
	 * dataset=workSerice.workAll(name,date); //列 String[] headers = { "编号",
	 * "员工名", "日期","班次","工作","备注" }; //传过去 int result=ee.exportExcel(title,
	 * headers, dataset,fileName); return result; }
	 */
	@RequestMapping("poiWirte.json")
	@ResponseBody
	public Object poiWirte(@RequestParam(value = "querySoftwareName", required = false) String querySoftwareName,
			@RequestParam(value = "queryStatus", required = false) Integer queryStatus,
			@RequestParam(value = "queryFlatformId", required = false) Integer queryFlatformId,
			@RequestParam(value = "queryCategoryLevel1", required = false, defaultValue = "0") Integer queryCategoryLevel1,
			@RequestParam(value = "queryCategoryLevel2", required = false, defaultValue = "0") Integer queryCategoryLevel2,
			@RequestParam(value = "queryCategoryLevel3", required = false, defaultValue = "0") Integer queryCategoryLevel3,
			HttpSession session) {
		HashMap<String, String> map = new HashMap<String, String>();
		try {
			Long id = ((DevUser) session.getAttribute("u")).getId();
			// 创建一个EXCEL
			Workbook wb = new HSSFWorkbook();

			DataFormat format = wb.createDataFormat();
			CellStyle style;

			QueryWrapper<Contract> wrapper = new QueryWrapper<Contract>();
			if (queryStatus != null && queryStatus != 0)
				wrapper.eq("a.status", queryStatus);
			if (queryFlatformId != null && queryFlatformId != 0)
				wrapper.eq("a.flatformId", queryFlatformId);
			if (querySoftwareName != null && !querySoftwareName.isEmpty())
				wrapper.like("a.softwareName", querySoftwareName);
			if (queryCategoryLevel1 != null && queryCategoryLevel1 != 0)
				wrapper.eq("a.categoryLevel1", queryCategoryLevel1);
			if (queryCategoryLevel2 != null && queryCategoryLevel2 != 0)
				wrapper.eq("a.categoryLevel2", queryCategoryLevel2);
			if (queryCategoryLevel3 != null && queryCategoryLevel3 != 0)
				wrapper.eq("a.categoryLevel3", queryCategoryLevel3);

			List<Contract> appInfoList = contractService.teacherinfor();
			// 创建一个SHEET
			Sheet sheet1 = (Sheet) wb.createSheet("合同信息");
			String[] title = { "合同名称", "合同编号", "合同类型", "合同状态", "承办人", "履行人", "批准文号"};
			int i = 0;
			// 创建一行
			Row row = (sheet1).createRow((short) 0);
			( sheet1).setDefaultColumnWidth(10);
			( sheet1).setColumnWidth(0, 35 * 256);
			(sheet1).setColumnWidth(1, 35 * 256);
			( sheet1).setColumnWidth(2, 15 * 256);
			( sheet1).setColumnWidth(4, 35 * 256);
			// 填充标题
			for (String s : title) {
				Cell cell = row.createCell(i);
				cell.setCellValue(s);
				i++;
			}
			for (int c = 0; c < appInfoList.size(); c++) {
				Contract appInfo1 = appInfoList.get(c);
				Row row1 = (sheet1).createRow((short) c + 1);
				// 下面是填充数据
				for (int n = 0; n < 8; n++) {
					switch (n) {
					case 0:
						row1.createCell(n).setCellValue(appInfo1.getContractName());
						break;
					case 1:
						row1.createCell(n).setCellValue(appInfo1.getContractNO());
						break;
					case 2:// 创建一个单元格子
						Cell cell2 = row1.createCell(n);
						// 填充合同编号
						cell2.setCellValue(appInfo1.getContractNO());
						style = wb.createCellStyle();
						style.setDataFormat(format.getFormat("#.##"));
						// 设定样式
						cell2.setCellStyle(style);
						break;
					case 3:
						// 合同类型
						row1.createCell(n).setCellValue(appInfo1.getContractType());
						break;
					case 4:// 合同状态
						row1.createCell(n).setCellValue(appInfo1.getContractStates());
						break;
					case 5: // 承办人	
						row1.createCell(n).setCellValue(appInfo1.getFeasorName());
						break;
					case 6: // 履行人	
						row1.createCell(n).setCellValue(appInfo1.getPartyBName());
						break;
					case 7: // 批准文号
						row1.createCell(n).setCellValue(appInfo1.getApprovalNumber());
						break;

					}

				}

			}

			FileOutputStream fileOut = new FileOutputStream("d:\\合同信息.xls");
			wb.write(fileOut);
			fileOut.close();
			map.put("message", "true");
		} catch (Exception e) {
			e.printStackTrace();
			map.put("message", "false");
		}

		return map;
	}
}
