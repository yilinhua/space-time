package com.util.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.util.dao.WarehousingMapper;
import com.util.pojo.Warehousing;
import com.util.service.WarehousingService;
@Controller
public class WarehousingServiceImpl implements WarehousingService{
	
	@Autowired
	private WarehousingMapper warehousingMapper;

	@Override
	public List<Warehousing> selectList() {
		
		return warehousingMapper.selectList();
	}

}
