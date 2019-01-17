package com.util.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.util.dao.retailMapper;
import com.util.dao.retreatMapper;
import com.util.service.retailService;
import com.util.service.retreatService;

@Service
public class retailServiceimpl implements retailService {

	@Autowired
	private retailMapper retailmapper;

	@Override
	public List<com.util.pojo.retail> retail() {
		// TODO Auto-generated method stub
		return retailmapper.retail();
	}

}
