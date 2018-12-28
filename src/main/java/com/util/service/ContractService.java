package com.util.service;

import java.util.List;

import com.util.pojo.Contract;

public interface ContractService {

	List<Contract> selectAll(Contract contract);

	int addContract(Contract contract);

	List<Contract> selectshen(Contract contract);

	int he(int id);

	List<Contract> zhixing(Contract contract);

	List<Contract> selectBB();

	List<Contract> selectid(int id);
	
	List<Contract> teacherinfor();
}
