package com.util.pojo;


/**
 *作者:zzq
 *时间:11点27分
 *作用:用户实体类
 **/
public class User {

	private int id;
	private String name;
	private String password;
	private int contractId;
	
	
	
	

	public int getContractId() {
		return contractId;
	}

	public void setContractId(int contractId) {
		this.contractId = contractId;
	}

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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
