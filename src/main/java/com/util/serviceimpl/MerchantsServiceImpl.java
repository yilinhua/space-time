package com.util.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.util.dao.MerchantsMapper;
import com.util.pojo.Merchants;
import com.util.service.MerchantsService;

@Service
@Transactional
public class MerchantsServiceImpl implements MerchantsService{

	@Autowired
	MerchantsMapper mapper;
	
	
	public List<Merchants> selectAll(String name) {
		// TODO Auto-generated method stub
		return mapper.selectAll(name);
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return mapper.delete(id);
	}

	@Override
	public Merchants chaId(int id) {
		// TODO Auto-generated method stub
		return mapper.chaId(id);
	}

	@Override
	public int update(Merchants merchants) {
		// TODO Auto-generated method stub
		return mapper.update(merchants);
	}

	@Override
	public int MerchantsInsert(Merchants merchants) {
		// TODO Auto-generated method stub
		return mapper.MerchantsInsert(merchants);
	}
  
}
