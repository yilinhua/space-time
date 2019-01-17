package com.util.serviceimpl;

import java.util.List;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.util.dao.AccessMapper;
import com.util.pojo.Access;
import com.util.service.AccessService;

@Service
public class AccessServiceimpl implements AccessService {
	@Autowired
	private AccessMapper accessMapper;

	@Override
	public List<Access> selectAll() {
		// TODO Auto-generated method stub
		return accessMapper.selectAll();
	}

}
