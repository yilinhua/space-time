package com.util.service;

import java.util.List;



import com.util.pojo.CargoLocation;


public interface CargoLocationService {

	List<CargoLocation> selectAlls(String  goodsName);
	
	int delete(int id);


	List<CargoLocation> selectAll();

	
	CargoLocation chaId(int id);
	
	int update(CargoLocation cargo);
	
	int huoWeiInsert(CargoLocation cargo);

}
