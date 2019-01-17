package com.util.pojo;

import java.sql.Date;

public class Product {
   private int id;
   private String code;
   private String company;
   private String trade_name;
   private String specifications;
   private String manufacturer;
   private String approval_number;
   private Date production_time;
   private Date expiration_date;
   private double price;
   private int qty;
   
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getCode() {
	return code;
}
public void setCode(String code) {
	this.code = code;
}
public String getCompany() {
	return company;
}
public void setCompany(String company) {
	this.company = company;
}
public String getTrade_name() {
	return trade_name;
}
public void setTrade_name(String trade_name) {
	this.trade_name = trade_name;
}
public String getSpecifications() {
	return specifications;
}
public void setSpecifications(String specifications) {
	this.specifications = specifications;
}
public String getManufacturer() {
	return manufacturer;
}
public void setManufacturer(String manufacturer) {
	this.manufacturer = manufacturer;
}
public String getApproval_number() {
	return approval_number;
}
public void setApproval_number(String approval_number) {
	this.approval_number = approval_number;
}
public Date getProduction_time() {
	return production_time;
}
public void setProduction_time(Date production_time) {
	this.production_time = production_time;
}
public Date getExpiration_date() {
	return expiration_date;
}
public void setExpiration_date(Date expiration_date) {
	this.expiration_date = expiration_date;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public int getQty() {
	return qty;
}
public void setQty(int qty) {
	this.qty = qty;
}
   
   
}
