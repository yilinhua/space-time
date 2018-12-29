package com.util.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.util.pojo.CargoLocation;



@Mapper
public interface CargoLocationMapper {
	List<CargoLocation> selectAll(String  name);
	
	int delete(int id);
	
	CargoLocation chaId(int id);
	
	int update(CargoLocation cargo);
	
	int huoWeiInsert(CargoLocation cargo);
}
