package com.util.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.util.dao.StaffMapper;
import com.util.pojo.Staff;
import com.util.service.StaffService;

@Service
@Transactional
public class StaffServiceImpl implements StaffService{

	@Autowired
	StaffMapper mapper;
	
	
	public List<Staff> selectAll(String name, String code) {
		// TODO Auto-generated method stub
		return mapper.selectAll(name, code);
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return mapper.delete(id);
	}

	@Override
	public Staff chaId(int id) {
		// TODO Auto-generated method stub
		return mapper.chaId(id);
	}

	@Override
	public int update(Staff staff) {
		// TODO Auto-generated method stub
		return mapper.update(staff);
	}

	@Override
	public int StaffInsert(Staff staff) {
		// TODO Auto-generated method stub
		return mapper.StaffInsert(staff);
	}

}
