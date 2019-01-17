package com.util.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.util.pojo.Merchants;

public interface MerchantsService {
List<Merchants> selectAll(String  name,String merchants_Type);
	
	int delete(int id);
	
	Merchants chaId(int id);
	
	int update(Merchants merchants);
	
	int MerchantsInsert(Merchants merchants);
}
