package com.util.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.util.dao.ContractMapper;
import com.util.pojo.Contract;
import com.util.service.ContractService;

@Service
public class ContractServiceimpl implements ContractService {

	@Autowired
	private ContractMapper contractMapper;

	@Override
	public List<Contract> selectAll(Contract contract) {
		// TODO Auto-generated method stub
		return (List<Contract>) contractMapper.selectAll(contract);
	}

}
