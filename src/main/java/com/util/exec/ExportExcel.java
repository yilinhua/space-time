package com.util.exec;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.poi.ss.formula.functions.T;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFColor;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFRichTextString;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class ExportExcel<T> {
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public int exportExcel(String title, String[] headers, Collection<T> dataset, String fileName) {
		// 是否导出成功
		int result = 1;
		// 声明一个工作薄
		// 提供读写Microsoft Excel OOXML格式档案的功能。
		XSSFWorkbook workbook = new XSSFWorkbook();
		// 生成一个表格
		// 要明确是在第几单元(找到对应的sheet)
		XSSFSheet sheet = workbook.createSheet(title);
		// 四个参数分别是：起始行，起始列，结束行，结束列
		/* sheet.addMergedRegion(new CellRangeAddress(0,1,0,0)); */
		// 设置表格默认列宽度为15个字节
		sheet.setDefaultColumnWidth(15);
		// 生成一个样式
		XSSFCellStyle style = workbook.createCellStyle();
		// 设置这些样式
		style.setFillForegroundColor(new XSSFColor(java.awt.Color.gray));
		/*
		 * style.setFillPattern(XSSFCellStyle.SOLID_FOREGROUND);
		 * style.setBorderBottom(XSSFCellStyle.BORDER_THIN);
		 * style.setBorderLeft(XSSFCellStyle.BORDER_THIN);
		 * style.setBorderRight(XSSFCellStyle.BORDER_THIN);
		 * style.setBorderTop(XSSFCellStyle.BORDER_THIN);
		 * style.setAlignment(XSSFCellStyle.ALIGN_CENTER);
		 */
		// 生成一个字体
		XSSFFont font = workbook.createFont();
		/* font.setBoldweight(XSSFFont.BOLDWEIGHT_BOLD); */
		font.setFontName("宋体");
		font.setColor(new XSSFColor(java.awt.Color.BLACK));
		font.setFontHeightInPoints((short) 11);
		// 把字体应用到当前的样式
		style.setFont(font);
		// 产生表格标题行
		XSSFRow row = sheet.createRow(0);
		XSSFCell cellHeader;
		for (int i = 0; i < headers.length; i++) {
			// 根据前端属性个数新建excel行数
			cellHeader = row.createCell(i);
			cellHeader.setCellStyle(style);
			cellHeader.setCellValue(new XSSFRichTextString(headers[i]));
		}
		// 遍历集合数据，产生数据行
		Iterator<T> it = dataset.iterator();
		int index = 0;
		T t;
		Field[] fields;
		Field field;
		XSSFRichTextString richString;
		Pattern p = Pattern.compile("^//d+(//.//d+)?$");
		Matcher matcher;
		String fieldName;
		String getMethodName;
		XSSFCell cell;
		Class tCls;
		Method getMethod;
		Object value;
		String textValue;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
		while (it.hasNext()) {
			index++;
			row = sheet.createRow(index);
			t = (T) it.next();
			// 利用反射，根据JavaBean属性的先后顺序，动态调用getXxx()方法得到属性值
			fields = t.getClass().getDeclaredFields();
			for (int i = 0; i < fields.length; i++) {
				cell = row.createCell(i);
				cell.setCellStyle(style);
				field = fields[i];
				fieldName = field.getName();
				getMethodName = "get" + fieldName.substring(0, 1).toUpperCase() + fieldName.substring(1);
				try {
					tCls = t.getClass();
					getMethod = tCls.getMethod(getMethodName, new Class[] {});
					value = getMethod.invoke(t, new Object[] {});
					// 判断值的类型后进行强制类型转换
					textValue = null;
					if (value instanceof Integer) {
						cell.setCellValue((Integer) value);
					} else if (value instanceof Float) {
						textValue = String.valueOf((Float) value);
						cell.setCellValue(textValue);
					} else if (value instanceof Double) {
						textValue = String.valueOf((Double) value);
						cell.setCellValue(textValue);
					} else if (value instanceof Long) {
						cell.setCellValue((Long) value);
					}
					if (value instanceof Boolean) {
						textValue = "是";
						if (!(Boolean) value) {
							textValue = "否";
						}
					} else if (value instanceof Date) {
						textValue = sdf.format((Date) value);
					} else {
						// 其它数据类型都当作字符串简单处理
						if (value != null) {
							textValue = value.toString();
						}
					}
					if (textValue != null) {
						matcher = p.matcher(textValue);
						if (matcher.matches()) {
							// 是数字当作double处理
							cell.setCellValue(Double.parseDouble(textValue));
						} else {
							richString = new XSSFRichTextString(textValue);
							cell.setCellValue(richString);
						}
					}
				} catch (Exception e) {
					result = 0;
					e.printStackTrace();
				}
			}
		}
		try {
			FileOutputStream out = new FileOutputStream(fileName);
			workbook.write(out);
		} catch (IOException e) {
			result = 0;
			e.printStackTrace();
		}
		return result;
	}
}
