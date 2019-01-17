package com.util.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.util.pojo.CargoLocation;
import com.util.pojo.Merchants;



@Mapper
public interface MerchantsMapper {
	List<Merchants> selectAll(@Param("name")String  name,@Param("merchants_Type")String merchants_Type);
	
	int delete(int id);
	
	Merchants chaId(int id);
	
	int update(Merchants merchants);
	
	int MerchantsInsert(Merchants merchants);
}
