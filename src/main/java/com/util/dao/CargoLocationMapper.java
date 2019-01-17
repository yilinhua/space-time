package com.util.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.util.pojo.CargoLocation;

@Mapper
public interface CargoLocationMapper {
	List<CargoLocation> selectAlls(String name);

	int delete(int id);


	List<CargoLocation> selectAll();

	
	CargoLocation chaId(int id);
	
	int update(CargoLocation cargo);
	
	int huoWeiInsert(CargoLocation cargo);
}
