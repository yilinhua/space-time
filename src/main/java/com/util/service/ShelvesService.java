package com.util.service;

import java.util.List;

import com.util.pojo.Shelves;


public interface ShelvesService {
	List<Shelves> selectAll(String number,int type,int state);
	
	int delete(int id);
	
	Shelves chaId(int id);
	
	int update(Shelves shelves);
	
	int shelvesInsert(Shelves shelves);
}
