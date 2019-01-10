package com.util.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.util.pojo.CargoLocation;
import com.util.pojo.order;
import com.util.service.CargoLocationService;

@Controller
public class CargoLocationController {

	@Autowired
	CargoLocationService cargo;

	@RequestMapping("/cargo")
	public String cargo(Model model, String goodsName) {

		List<CargoLocation> list = cargo.selectAlls(goodsName);
		model.addAttribute("list", list);
		model.addAttribute("goodsName", goodsName);
		return "ziliao/cargo";
	}

	@RequestMapping("/delete")
	@ResponseBody
	public String delete(int id) {
		if (cargo.delete(id) != 0) {

			return "1";
		}

		return "0";
	}

	@RequestMapping("/ddd")
	public String ggg() {
		return "/jituanBB/test";

	}

	@RequestMapping("/ssss")
	@ResponseBody
	public List<CargoLocation> cargos() {
		List<CargoLocation> list = cargo.selectAll();

		return list;
	}

	@RequestMapping("/huoweiDao")
	public String huowei() {

		HSSFWorkbook workbook = new HSSFWorkbook();
		HSSFSheet sheet = workbook.createSheet("货位记录");
		HSSFDateUtil hssg = new HSSFDateUtil();
		// 起始行，起始列，结束行，结束列
		/* sheet.addMergedRegion(new CellRangeAddress(0,0,0,1)); */
		/* sheet.addMergedRegion(new CellRangeAddress(0, 0, 0, 1)); */
		HSSFRow row = sheet.createRow(0);
		List<CargoLocation> list = cargo.selectAll();
		HSSFCell cell = null;
		cell = row.createCell(0);
		cell.setCellValue("编号");
		cell = row.createCell(1);
		cell.setCellValue("货位名称");
		cell = row.createCell(2);
		cell.setCellValue("规格型号");
		cell = row.createCell(3);
		cell.setCellValue("基本单位");
		cell = row.createCell(4);
		cell.setCellValue("所属仓库");
		cell = row.createCell(5);
		cell.setCellValue("库位说明");

		for (int i = 0; i < list.size(); i++) {
			/*
			 * cell.setCellValue(new Date(2008,5,5)); HSSFCellStyle cellStyle =
			 * workbook.createCellStyle(); HSSFDataFormat format=
			 * workbook.createDataFormat();
			 * cellStyle.setDataFormat(format.getFormat("yyyy年m月d日"));
			 */

			row = sheet.createRow(i + 1);
			cell = row.createCell(0);
			cell.setCellValue(list.get(i).getCode());
			cell = row.createCell(1);
			cell.setCellValue(list.get(i).getGoodsname());
			cell = row.createCell(2);
			cell.setCellValue(list.get(i).getSpecification_type());
			cell = row.createCell(3);
			cell.setCellValue(list.get(i).getBasic_unit());
			/*
			 * cell=row.createCell(4); cell.setCellStyle(cellStyle);
			 */
			/* cell.setCellValue(new Date(list.get(i).getOrdertime());hssg */
			// cell=cell.setCellValue(new Date(2008,5,5));
			cell=row.createCell(4);
			cell.setCellValue(list.get(i).getWarehouse());
			cell = row.createCell(5);
			cell.setCellValue(list.get(i).getExplain());
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
			FileOutputStream fos = new FileOutputStream("D:/货位记录.xls");

			workbook.write(fos);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "redirect:/cargo";

	}

}
