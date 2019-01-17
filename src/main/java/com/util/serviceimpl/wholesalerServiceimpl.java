package com.util.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.util.dao.wholesalerMapper;
import com.util.pojo.wholesaler;
import com.util.service.wholesalerService;

@Service
public class wholesalerServiceimpl implements wholesalerService {

	@Autowired
	private wholesalerMapper wholesalermapper;

	@Override
	public List<wholesaler> wholesalers() {
		// TODO Auto-generated method stub
		return wholesalermapper.wholesalers();
	}

}
