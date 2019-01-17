package com.util.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.util.dao.renyuanMapper;
import com.util.pojo.renyuan;
import com.util.service.renyuanService;

@Service
public class renyuanServiceimpl implements renyuanService {

	@Autowired
	private renyuanMapper renyuanmapper;

	@Override
	public List<renyuan> list() {
		// TODO Auto-generated method stub
		return renyuanmapper.list();
	}

}
