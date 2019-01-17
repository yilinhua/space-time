package com.util.serviceimpl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.util.dao.Caustic_excessiveMapper;
import com.util.pojo.Caustic_excessive;
import com.util.service.Caustic_excessiveService;

@org.springframework.stereotype.Service
@Transactional
public class Caustic_excessiveServiceImpl implements Caustic_excessiveService {

	@Autowired
	Caustic_excessiveMapper mapper;

	@Override
	public List<Caustic_excessive> selectAll(String type,String shelves_number,String start_time,String end_time) {
		// TODO Auto-generated method stub
		return mapper.selectAll(type, shelves_number,start_time,end_time);
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return mapper.delete(id);
	}

	@Override
	public Caustic_excessive chaId(int id) {
		// TODO Auto-generated method stub
		return mapper.chaId(id);
	}

	@Override
	public int update(Caustic_excessive caustic_excessive) {
		// TODO Auto-generated method stub
		return mapper.update(caustic_excessive);
	}

	@Override
	public int Caustic_excessiveInsert(Caustic_excessive caustic_excessive) {
		// TODO Auto-generated method stub
		return mapper.Caustic_excessiveInsert(caustic_excessive);
	}
	
}
