package com.util.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.util.pojo.Check;

import com.util.pojo.Product;
import com.util.service.CheckService;
import com.util.service.ProductService;

@Controller
public class CheckController {

	@Autowired
	CheckService check;

	@Autowired
	ProductService product;

	@RequestMapping("/check")

	
		
	public String check(Model model, String check_type, String Drug_type, String start_time, String end_time,@RequestParam(defaultValue="0")int ye) {
		PageHelper.startPage(ye, 3);
		List<Check> list = check.selectAll(check_type, Drug_type, start_time, end_time);
		PageInfo<Check> pageinfo = new PageInfo<Check>(list);
		model.addAttribute("list", list);
		model.addAttribute("check_type", check_type);
		model.addAttribute("drug_type", Drug_type);
		model.addAttribute("total", pageinfo.getTotal()%3==0?pageinfo.getTotal()/3:pageinfo.getTotal()/3+1);
		model.addAttribute("yeMa", pageinfo.getPageNum());
		return "kucun/check";

	} 
	



	@RequestMapping("checkInsert")
	public String check(Check check) {
		if (check.getCheck_type() == null) {
			check.setCheck_type("0");
		}
		this.check.checkInsert(check);
		return "redirect:check";
	}

	@RequestMapping("/fenlei")
	@ResponseBody
	public String fenlei(String Drugs_type) {
		List<Product> list = product.selectAll(null, Drugs_type);
		String html = "";
		if (Drugs_type.equals("1")) {
			html = "<td>中药名称：</td><td><select  name='check_type'>";
		} else {
			html = "<td>西药名称：</td><td><select  name='check_type'>";
		}
		for (int i = 0; i < list.size(); i++) {
			html += "<option value=" + list.get(i).getTrade_name() + ">" + list.get(i).getTrade_name() + "</option>";
		}
		html += "</select></td>";
		return html;
	}

	
	@RequestMapping("/Checkdaochu")
	public String Checkdaochu(String check_type,String Drug_type,String start_time,String end_time){
		
		HSSFWorkbook workbook = new HSSFWorkbook();
		HSSFSheet sheet = workbook.createSheet("货位记录");
		
		// 起始行，起始列，结束行，结束列
		/* sheet.addMergedRegion(new CellRangeAddress(0,0,0,1)); */
		/* sheet.addMergedRegion(new CellRangeAddress(0, 0, 0, 1)); */
		HSSFRow row = sheet.createRow(0);
		List<Check> list = check.selectAll(check_type,Drug_type,start_time,end_time);
		HSSFCell cell = null;
		cell = row.createCell(0);
		cell.setCellValue("盘点时间");
		cell = row.createCell(1);
		cell.setCellValue("盘点商品");
		cell = row.createCell(2);
		cell.setCellValue("盘点人");
		cell = row.createCell(3);
		cell.setCellValue("实际库存");
		cell = row.createCell(4);
		cell.setCellValue("单价");
		cell = row.createCell(5);
		cell.setCellValue("数量");
		cell = row.createCell(6);
		cell.setCellValue("规格");
		cell = row.createCell(7);
		cell.setCellValue("盘点类型");
		cell = row.createCell(8);
		for (int i = 0; i<list.size(); i++) {
			/*
			 * cell.setCellValue(new Date(2008,5,5)); HSSFCellStyle cellStyle =
			 * workbook.createCellStyle(); HSSFDataFormat format=
			 * workbook.createDataFormat();
			 * cellStyle.setDataFormat(format.getFormat("yyyy年m月d日"));
			 */

			row = sheet.createRow(i + 1);
			cell = row.createCell(0);
			cell.setCellValue(list.get(i).getCheck_time());
			cell = row.createCell(1);
			cell.setCellValue(list.get(i).getCheck_type());
			cell = row.createCell(2);
			cell.setCellValue(list.get(i).getCheck_name());
			cell = row.createCell(3);
			cell.setCellValue(list.get(i).getPractical_repertory());
			/*
			 * cell=row.createCell(4); cell.setCellStyle(cellStyle);
			 */
			/* cell.setCellValue(new Date(list.get(i).getOrdertime());hssg */
			// cell=cell.setCellValue(new Date(2008,5,5));
			cell=row.createCell(4);
			cell.setCellValue(list.get(i).getPrice());
			cell = row.createCell(5);
			cell.setCellValue(list.get(i).getQty());
			cell = row.createCell(6);
			cell.setCellValue(list.get(i).getSpecification());
			cell = row.createCell(7);
			cell.setCellValue(list.get(i).getQty());
			/*
			 * cell = row.createCell(0);
			 * cell.setCellValue(list.get(i).getContractName()); cell =
			 * row.createCell(3);
			 * cell.setCellValue(list.get(i).getContractNO()); cell =
			 * row.createCell(4); cell.setCellValue(zhuan); cell =
			 * row.createCell(5); cell.setCellValue(zhuangt); cell =
			 * row.createCell(6);
			 * cell.setCellValue(list.get(i).getUndertakerName()); cell =
			 * row.createCell(7);
			 * cell.setCellValue(list.get(i).getFeasorName()); cell =
			 * row.createCell(8);
			 * cell.setCellValue(list.get(i).getApprovalNumber());
			 */
		}
		try {
			FileOutputStream fos = new FileOutputStream("D:/盘点记录.docx");

			workbook.write(fos);
		} catch (IOException e) {
			e.printStackTrace();
		}
      return "redirect:check";
	}

	@RequestMapping("/pandianDao")
	public String pandian() {

		HSSFWorkbook workbook = new HSSFWorkbook();
		HSSFSheet sheet = workbook.createSheet("盘点信息");

		// 起始行，起始列，结束行，结束列
		/* sheet.addMergedRegion(new CellRangeAddress(0,0,0,1)); */
		/* sheet.addMergedRegion(new CellRangeAddress(0, 0, 0, 2)); */
		HSSFRow row = sheet.createRow(0);
		List<Check> list = check.list();
		HSSFCell cell = null;
		cell = row.createCell(0);
		cell.setCellValue("盘点商品");
		cell = row.createCell(1);
		cell.setCellValue("盘点人");
		cell = row.createCell(2);
		cell.setCellValue("实际库存");
		cell = row.createCell(3);
		cell.setCellValue("系统库存");
		cell = row.createCell(4);
		cell.setCellValue("单价");
		cell = row.createCell(5);
		cell.setCellValue("规格");
		cell = row.createCell(6);
		cell.setCellValue("盘点类型");
		cell = row.createCell(7);
		cell.setCellValue("盘点时间");
		String zhang = "";
		for (int i = 0; i < list.size(); i++) {
			row = sheet.createRow(i + 1);
			cell = row.createCell(0);
			cell.setCellValue(list.get(i).getCheck_type());
			cell = row.createCell(1);
			cell.setCellValue(list.get(i).getCheck_name());
			cell = row.createCell(2);
			cell.setCellValue(list.get(i).getPractical_repertory());
			cell = row.createCell(3);
			cell.setCellValue(list.get(i).getSystem_repertory());
			cell = row.createCell(4);
			cell.setCellValue(list.get(i).getPrice());
			cell = row.createCell(5);
			cell.setCellValue(list.get(i).getSpecification());

			if (list.get(i).getDrug_type() == 0) {
				zhang = "所有";
			}
			if (list.get(i).getDrug_type() == 1) {
				zhang = "中药";
			}
			if (list.get(i).getDrug_type() == 2) {
				zhang = "西药";
			}
			cell = row.createCell(6);
			cell.setCellValue(zhang);
			cell = row.createCell(7);
			cell.setCellValue(list.get(i).getCheck_time());
		}
		

		try {
			FileOutputStream fos = new FileOutputStream("D:/盘点.xls");

			workbook.write(fos);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "redirect:/hetong/tongji.html";

	}
}
