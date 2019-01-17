package com.util.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.util.dao.xiaoshouMapper;
import com.util.pojo.xiaoshou;
import com.util.service.xiaoshouService;

@Service
public class xiaoshouServiceimpl implements xiaoshouService{

	@Autowired
	private xiaoshouMapper xiaoshouMapper;
	
	@Override
	public List<xiaoshou> list1() {
		// TODO Auto-generated method stub
		return xiaoshouMapper.list1();
	}

}
