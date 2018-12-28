package com.util.pojo;

import com.mysql.fabric.xmlrpc.base.Data;

public class order {
	private int id;
	private int userName;
	private int tradeName;
	private int number;
	private double totalSum;
	private Data ordertime;
	private String address;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserName() {
		return userName;
	}
	public void setUserName(int userName) {
		this.userName = userName;
	}
	public int getTradeName() {
		return tradeName;
	}
	public void setTradeName(int tradeName) {
		this.tradeName = tradeName;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public double getTotalSum() {
		return totalSum;
	}
	public void setTotalSum(double totalSum) {
		this.totalSum = totalSum;
	}
	public Data getOrdertime() {
		return ordertime;
	}
	public void setOrdertime(Data ordertime) {
		this.ordertime = ordertime;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	

}
