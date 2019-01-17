package com.util.pojo;

import java.sql.Date;


public class Staff {
   private int id;
   private String name;
   private String code;
   private String phone;
   private String address;
   private int sex;
   private String pid;
   private int departmentID;
   private Date entry_time;
   private String card_No;
   private String evaluate;
   private String position;
   private Department department;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getCode() {
	return code;
}
public void setCode(String code) {
	this.code = code;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public int getSex() {
	return sex;
}
public void setSex(int sex) {
	this.sex = sex;
}
public String getPid() {
	return pid;
}
public void setPid(String pid) {
	this.pid = pid;
}
public int getDepartmentID() {
	return departmentID;
}
public void setDepartmentID(int departmentID) {
	this.departmentID = departmentID;
}
public Date getEntry_time() {
	return entry_time;
}
public void setEntry_time(Date entry_time) {
	this.entry_time = entry_time;
}
public String getCard_No() {
	return card_No;
}
public void setCard_No(String card_No) {
	this.card_No = card_No;
}
public String getEvaluate() {
	return evaluate;
}
public void setEvaluate(String evaluate) {
	this.evaluate = evaluate;
}
public String getPosition() {
	return position;
}
public void setPosition(String position) {
	this.position = position;
}
public Department getDepartment() {
	return department;
}
public void setDepartment(Department department) {
	this.department = department;
}


   
}
