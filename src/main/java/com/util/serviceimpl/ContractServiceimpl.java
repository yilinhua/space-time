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

	@Override
	public int addContract(Contract contract) {
		// TODO Auto-generated method stub
		return contractMapper.addContract(contract);
	}

	@Override
	public int he(int id) {
		// TODO Auto-generated method stub
		return contractMapper.he(id);
	}

	@Override
	public List<Contract> selectshen(Contract contract) {
		// TODO Auto-generated method stub
		return contractMapper.selectshen(contract);
	}

	@Override
	public List<Contract> zhixing(Contract contract) {
		// TODO Auto-generated method stub
		return contractMapper.zhixing(contract);
	}

	@Override
	public List<Contract> selectBB(Contract contract) {
		// TODO Auto-generated method stub
		return contractMapper.selectBB(contract);
	}

	@Override
	public List<Contract> selectid(int id) {
		// TODO Auto-generated method stub
		return contractMapper.selectid(id);
	}

	@Override
	public List<Contract> teacherinfor() {
		// TODO Auto-generated method stub
		return contractMapper.teacherinfor();
	}

}
