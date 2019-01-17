package com.util.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.util.pojo.Shelves;



@Mapper
public interface ShelvesMapper {
	List<Shelves> selectAll(@Param("number")String number,@Param("type")int type,@Param("state")int state);
	
	int delete(int id);
	
	Shelves chaId(int id);
	
	int update(Shelves shelves);
	
	int shelvesInsert(Shelves shelves);
}
