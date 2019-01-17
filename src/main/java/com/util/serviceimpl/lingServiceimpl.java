package com.util.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.util.dao.lingMapper;
import com.util.pojo.ling;
import com.util.service.lingService;

@Service
public class lingServiceimpl implements lingService {

	@Autowired
	private lingMapper lingmapper;

	@Override
	public List<ling> selectAll() {
		// TODO Auto-generated method stub
		return lingmapper.selectAll();
	}

}
