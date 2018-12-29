package com.util.service;

import java.util.List;



import com.util.pojo.CargoLocation;


public interface CargoLocationService {

	List<CargoLocation> selectAll(String  goodsName);
	
	int delete(int id);
	
	CargoLocation chaId(int id);
	
	int update(CargoLocation cargo);
	
	int huoWeiInsert(CargoLocation cargo);
}
