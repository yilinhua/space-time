package com.util.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.util.dao.huowuMapper;
import com.util.pojo.huowu;
import com.util.service.huowuService;

@Service
public class huowuServiceimpl implements huowuService {

	@Autowired
	private huowuMapper huowumapper;

	@Override
	public List<huowu> list() {
		// TODO Auto-generated method stub
		return huowumapper.list();
	}

}
