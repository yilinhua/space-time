package com.util.pojo;

public class CargoLocation {
  private int id ;
  private String code ;
  private String specification_type;
  private String basic_unit;
  private String goodsname ;
  private int warehouse ;
  private String explain ;
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
public String getGoodsname() {
	return goodsname;
}
public void setGoodsname(String goodsname) {
	this.goodsname = goodsname;
}

public String getSpecification_type() {
	return specification_type;
}
public void setSpecification_type(String specification_type) {
	this.specification_type = specification_type;
}

public String getBasic_unit() {
	return basic_unit;
}
public void setBasic_unit(String basic_unit) {
	this.basic_unit = basic_unit;
}

public String getExplain() {
	return explain;
}
public void setExplain(String explain) {
	this.explain = explain;
}
public int getWarehouse() {
	return warehouse;
}
public void setWarehouse(int warehouse) {
	this.warehouse = warehouse;
}

    
}
