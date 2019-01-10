package com.util.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.util.dao.purchaseMapper;
import com.util.pojo.purchase;
import com.util.service.purchaseService;

@Service
public class purchaseServiceimpl implements purchaseService {

	@Autowired
	private purchaseMapper purchasemapper;

	@Override
	public List<purchase> size1() {
		// TODO Auto-generated method stub
		return purchasemapper.size1();
	}
}
