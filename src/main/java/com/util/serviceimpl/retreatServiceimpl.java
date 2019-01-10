package com.util.serviceimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.util.dao.retreatMapper;
import com.util.pojo.retreat;
import com.util.service.retreatService;

@Service
public class retreatServiceimpl implements retreatService {

	@Autowired 
	private retreatMapper retreatmapper;

	@Override
	public List<retreat> top() {
		return retreatmapper.top();
	}

	@Override
	public List<retreat> name1() {
		// TODO Auto-generated method stub
		return retreatmapper.name1();
	}

}
