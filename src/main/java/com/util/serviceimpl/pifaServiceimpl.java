package com.util.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.util.dao.pifaMapper;
import com.util.pojo.pifa;
import com.util.service.pifaService;

@Service
public class pifaServiceimpl implements pifaService {

	@Autowired
	private pifaMapper pifaMapper;

	@Override
	public List<pifa> selectAll() {
		// TODO Auto-generated method stub
		return pifaMapper.selectAll();
	}

	

}
