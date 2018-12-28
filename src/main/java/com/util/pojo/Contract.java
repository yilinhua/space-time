package com.util.pojo;

import java.sql.Date;

/**
 * 作者:zzq 时间:11点27分 作用:合同实体类
 **/
public class Contract {

	private int id;
	private String contractName; // 合同名称
	private int contractType; // 合同类型
	private String contractNO; // 合同编号
	private int fundFlow; // 资金流向
	private int contractStates; // 合同状态
	private int WhetherInvalid; // 是否作废
	private int WhetherChange; // 是否变更
	private int undertakerId; // 承办人id
	private String undertakerName; // 承办人名字
	private String phone; // 联系电话
	private int feasorId; // 履行人id
	private String feasorName; // 履行人名字
	private Date takeDate; // 生效时间
	private Date efficacyDate; // 失效时间
	private Date concludeDate; // 签订时间
	private String remark; // 备注
	private int deliveryType; // 交货方式
	private int transportationType; // 运输方式
	private String firstParty; // 甲方
	private String partyB; // 乙方
	private String firstPartyAddress;// 甲方地址
	private String partyBAddress; // 乙方地址
	private String firstPartyName; //甲方法定人
	private String partyBName; //乙方法定人
	private String implement; //执行情况
	private String approvalNumber; // 批准文号
	private int wastage; // 运输费、合理损耗负责方
	private int clearingForm; // 结算方式
	private int creditPeriod; // 付款期限
	
	
	public String getImplement() {
		return implement;
	}
	public void setImplement(String implement) {
		this.implement = implement;
	}
	public String getFirstPartyName() {
		return firstPartyName;
	}
	public void setFirstPartyName(String firstPartyName) {
		this.firstPartyName = firstPartyName;
	}
	public String getPartyBName() {
		return partyBName;
	}
	public void setPartyBName(String partyBName) {
		this.partyBName = partyBName;
	}
	
	
	public String getContractName() {
		return contractName;
	}
	public void setContractName(String contractName) {
		this.contractName = contractName;
	}
	public String getContractNO() {
		return contractNO;
	}
	public void setContractNO(String contractNO) {
		this.contractNO = contractNO;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public int getContractType() {
		return contractType;
	}
	public void setContractType(int contractType) {
		this.contractType = contractType;
	}
	
	
	public int getFundFlow() {
		return fundFlow;
	}
	public void setFundFlow(int fundFlow) {
		this.fundFlow = fundFlow;
	}
	public int getContractStates() {
		return contractStates;
	}
	public void setContractStates(int contractStates) {
		this.contractStates = contractStates;
	}
	public int getWhetherInvalid() {
		return WhetherInvalid;
	}
	public void setWhetherInvalid(int whetherInvalid) {
		WhetherInvalid = whetherInvalid;
	}
	public int getWhetherChange() {
		return WhetherChange;
	}
	public void setWhetherChange(int whetherChange) {
		WhetherChange = whetherChange;
	}
	public int getUndertakerId() {
		return undertakerId;
	}
	public void setUndertakerId(int undertakerId) {
		this.undertakerId = undertakerId;
	}
	public String getUndertakerName() {
		return undertakerName;
	}
	public void setUndertakerName(String undertakerName) {
		this.undertakerName = undertakerName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getFeasorId() {
		return feasorId;
	}
	public void setFeasorId(int feasorId) {
		this.feasorId = feasorId;
	}
	public String getFeasorName() {
		return feasorName;
	}
	public void setFeasorName(String feasorName) {
		this.feasorName = feasorName;
	}
	public Date getTakeDate() {
		return takeDate;
	}
	public void setTakeDate(Date takeDate) {
		this.takeDate = takeDate;
	}
	public Date getEfficacyDate() {
		return efficacyDate;
	}
	public void setEfficacyDate(Date efficacyDate) {
		this.efficacyDate = efficacyDate;
	}
	public Date getConcludeDate() {
		return concludeDate;
	}
	public void setConcludeDate(Date concludeDate) {
		this.concludeDate = concludeDate;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public int getDeliveryType() {
		return deliveryType;
	}
	public void setDeliveryType(int deliveryType) {
		this.deliveryType = deliveryType;
	}
	public int getTransportationType() {
		return transportationType;
	}
	public void setTransportationType(int transportationType) {
		this.transportationType = transportationType;
	}
	public String getFirstParty() {
		return firstParty;
	}
	public void setFirstParty(String firstParty) {
		this.firstParty = firstParty;
	}
	public String getPartyB() {
		return partyB;
	}
	public void setPartyB(String partyB) {
		this.partyB = partyB;
	}
	public String getFirstPartyAddress() {
		return firstPartyAddress;
	}
	public void setFirstPartyAddress(String firstPartyAddress) {
		this.firstPartyAddress = firstPartyAddress;
	}
	public String getPartyBAddress() {
		return partyBAddress;
	}
	public void setPartyBAddress(String partyBAddress) {
		this.partyBAddress = partyBAddress;
	}
	public String getApprovalNumber() {
		return approvalNumber;
	}
	public void setApprovalNumber(String approvalNumber) {
		this.approvalNumber = approvalNumber;
	}
	public int getWastage() {
		return wastage;
	}
	public void setWastage(int wastage) {
		this.wastage = wastage;
	}
	public int getClearingForm() {
		return clearingForm;
	}
	public void setClearingForm(int clearingForm) {
		this.clearingForm = clearingForm;
	}
	public int getCreditPeriod() {
		return creditPeriod;
	}
	public void setCreditPeriod(int creditPeriod) {
		this.creditPeriod = creditPeriod;
	}
	
	
	
}
