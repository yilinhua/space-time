package com.util.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFDataFormat;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.util.CellRangeAddress;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.util.pojo.Contract;
import com.util.pojo.order;
import com.util.service.OrderManagementService;

@Controller
public class OrderManagementController {

	@Autowired
	private OrderManagementService orderManagementService;

	@RequestMapping("/selectList")
	public String select(HttpSession session) {

		List<order> list = orderManagementService.selectList();
		session.setAttribute("list", list);
		return "ylh/OrderManagement";

	}

	@RequestMapping("/rukuDao")
	public String ruk() {
		HSSFWorkbook workbook = new HSSFWorkbook();
		HSSFSheet sheet = workbook.createSheet("入库记录");
		HSSFDateUtil hssg = new HSSFDateUtil();
		// 起始行，起始列，结束行，结束列
		/* sheet.addMergedRegion(new CellRangeAddress(0,0,0,1)); */
		/* sheet.addMergedRegion(new CellRangeAddress(0, 0, 0, 1)); */
		HSSFRow row = sheet.createRow(0);
		List<order> list = orderManagementService.selectList();
		HSSFCell cell = null;
		cell = row.createCell(0);
		cell.setCellValue("批发商");
		cell = row.createCell(1);
		cell.setCellValue("药品名称");
		cell = row.createCell(2);
		cell.setCellValue("数量");
		cell = row.createCell(3);
		cell.setCellValue("总金额");
		cell = row.createCell(4);
		cell.setCellValue("批发时间");
		cell = row.createCell(5);
		cell.setCellValue("收货地址");

		for (int i = 0; i < list.size(); i++) {
			/*
			 * cell.setCellValue(new Date(2008,5,5)); HSSFCellStyle cellStyle =
			 * workbook.createCellStyle(); HSSFDataFormat format=
			 * workbook.createDataFormat();
			 * cellStyle.setDataFormat(format.getFormat("yyyy年m月d日"));
			 */

			row = sheet.createRow(i + 1);
			cell = row.createCell(0);
			cell.setCellValue(list.get(i).getUserName());
			cell = row.createCell(1);
			cell.setCellValue(list.get(i).getTradeName());
			cell = row.createCell(2);
			cell.setCellValue(list.get(i).getNumber());
			cell = row.createCell(3);
			cell.setCellValue(list.get(i).getTotalSum());
			/*
			 * cell=row.createCell(4); cell.setCellStyle(cellStyle);
			 */
			/* cell.setCellValue(new Date(list.get(i).getOrdertime());hssg */
			// cell=cell.setCellValue(new Date(2008,5,5));
			cell = row.createCell(5);
			cell.setCellValue(list.get(i).getAddress());
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
			FileOutputStream fos = new FileOutputStream("D:/入库记录.xls");

			workbook.write(fos);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "redirect:/selectList";

	}

	@RequestMapping("/chukuDao")
	public String chu() {
		HSSFWorkbook workbook = new HSSFWorkbook();
		HSSFSheet sheet = workbook.createSheet("出库记录");
		HSSFDateUtil hssg = new HSSFDateUtil();
		// 起始行，起始列，结束行，结束列
		/* sheet.addMergedRegion(new CellRangeAddress(0,0,0,1)); */
		/* sheet.addMergedRegion(new CellRangeAddress(0, 0, 0, 1)); */
		HSSFRow row = sheet.createRow(0);
		List<order> list = orderManagementService.selectList();
		HSSFCell cell = null;
		cell = row.createCell(0);
		cell.setCellValue("批发商");
		cell = row.createCell(1);
		cell.setCellValue("药品名称");
		cell = row.createCell(2);
		cell.setCellValue("数量");
		cell = row.createCell(3);
		cell.setCellValue("总金额");
		cell = row.createCell(4);
		cell.setCellValue("批发时间");
		cell = row.createCell(5);
		cell.setCellValue("收货地址");

		for (int i = 0; i < list.size(); i++) {
			/*
			 * cell.setCellValue(new Date(2008,5,5)); HSSFCellStyle cellStyle =
			 * workbook.createCellStyle(); HSSFDataFormat format=
			 * workbook.createDataFormat();
			 * cellStyle.setDataFormat(format.getFormat("yyyy年m月d日"));
			 */

			row = sheet.createRow(i + 1);
			cell = row.createCell(0);
			cell.setCellValue(list.get(i).getUserName());
			cell = row.createCell(1);
			cell.setCellValue(list.get(i).getTradeName());
			cell = row.createCell(2);
			cell.setCellValue(list.get(i).getNumber());
			cell = row.createCell(3);
			cell.setCellValue(list.get(i).getTotalSum());
			/*
			 * cell=row.createCell(4); cell.setCellStyle(cellStyle);
			 */
			/* cell.setCellValue(new Date(list.get(i).getOrdertime());hssg */
			// cell=cell.setCellValue(new Date(2008,5,5));
			cell = row.createCell(5);
			cell.setCellValue(list.get(i).getAddress());
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
			FileOutputStream fos = new FileOutputStream("D:/出库记录.xls");

			workbook.write(fos);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "redirect:/selectList";

	
		

	}

}
