package com.util.serviceimpl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.util.dao.ShelvesMapper;
import com.util.pojo.Shelves;
import com.util.service.ShelvesService;

@org.springframework.stereotype.Service
@Transactional
public class ShelvesServiceImpl implements ShelvesService{

	@Autowired
	ShelvesMapper mapper;
	
	public List<Shelves> selectAll(String number,int type,int state) {
		// TODO Auto-generated method stub
		return mapper.selectAll(number,type,state);
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return mapper.delete(id);
	}

	@Override
	public Shelves chaId(int id) {
		// TODO Auto-generated method stub
		return mapper.chaId(id);
	}

	@Override
	public int update(Shelves shelves) {
		// TODO Auto-generated method stub
		return mapper.update(shelves);
	}

	@Override
	public int shelvesInsert(Shelves shelves) {
		// TODO Auto-generated method stub
		return mapper.shelvesInsert(shelves);
	}

}
