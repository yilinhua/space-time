package com.util.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.util.dao.indentMapper;
import com.util.pojo.indent;
import com.util.service.indentService;

@Service
public class indentServiceimpl implements indentService {

	@Autowired
	private indentMapper indentmapper;

	@Override
	public List<indent> selectAll() {
		// TODO Auto-generated method stub
		return indentmapper.selectAll();
	}

}
