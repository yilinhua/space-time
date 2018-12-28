package com.util.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.util.dao.OrderManagementMapper;
import com.util.pojo.order;
import com.util.service.OrderManagementService;

@Service
public class OrderManagementServiceImpl implements OrderManagementService{

	
	@Autowired
	private OrderManagementMapper orderManagementMapper;

	@Override
	public List<order> selectList() {
		// TODO Auto-generated method stub
		return orderManagementMapper.selectList();
	}


	
}
