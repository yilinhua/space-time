package com.util.service;

import java.util.List;

import com.util.pojo.Merchants;

public interface MerchantsService {
List<Merchants> selectAll(String  name);
	
	int delete(int id);
	
	Merchants chaId(int id);
	
	int update(Merchants merchants);
	
	int MerchantsInsert(Merchants merchants);
}
