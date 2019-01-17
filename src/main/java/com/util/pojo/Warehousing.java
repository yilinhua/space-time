package com.util.pojo;

import java.sql.Date;

public class Warehousing {
	private int id;
	private String date;
	private String drugname;
	private int number;
	private String warehousename;
	private String shelfnumber;
	private double totalsum;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getDrugname() {
		return drugname;
	}
	public void setDrugname(String drugname) {
		this.drugname = drugname;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getWarehousename() {
		return warehousename;
	}
	public void setWarehousename(String warehousename) {
		this.warehousename = warehousename;
	}
	public String getShelfnumber() {
		return shelfnumber;
	}
	public void setShelfnumber(String shelfnumber) {
		this.shelfnumber = shelfnumber;
	}
	public double getTotalsum() {
		return totalsum;
	}
	public void setTotalsum(double totalsum) {
		this.totalsum = totalsum;
	}
	

}
