package com.util.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.util.dao.CheckMapper;
import com.util.pojo.Check;
import com.util.service.CheckService;

@Service
@Transactional
public class CheckServiceImpl implements CheckService {

	@Autowired
	CheckMapper mapper;

	@Override
	public int checkInsert(Check check) {
		// TODO Auto-generated method stub
		return mapper.checkInsert(check);
	}

	@Override
	public List<Check> selectAll(String check_type, String Drug_type, String start_time, String end_time) {
		// TODO Auto-generated method stub

		return mapper.selectAll(check_type, Drug_type, start_time, end_time);
	}

	@Override
	public List<Check> list() {
		// TODO Auto-generated method stub
		return mapper.list();
	}

}
