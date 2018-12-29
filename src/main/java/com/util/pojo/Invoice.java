package com.util.pojo;

import java.sql.Date;

public class Invoice {
	private int id;
	private String customername;
	private String productname;
	private int number;
	private double unitprice;
	private double fullamount;
	private Date billingtime;
	private String drawer;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCustomername() {
		return customername;
	}
	public void setCustomername(String customername) {
		this.customername = customername;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public double getUnitprice() {
		return unitprice;
	}
	public void setUnitprice(double unitprice) {
		this.unitprice = unitprice;
	}
	public double getFullamount() {
		return fullamount;
	}
	public void setFullamount(double fullamount) {
		this.fullamount = fullamount;
	}
	public Date getBillingtime() {
		return billingtime;
	}
	public void setBillingtime(Date billingtime) {
		this.billingtime = billingtime;
	}
	public String getDrawer() {
		return drawer;
	}
	public void setDrawer(String drawer) {
		this.drawer = drawer;
	}

}
