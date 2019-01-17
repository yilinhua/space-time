package com.util.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.util.pojo.Caustic_excessive;




@Mapper
public interface Caustic_excessiveMapper {
	List<Caustic_excessive> selectAll(@Param("type")String type,@Param("shelves_number")String shelves_number,
			@Param("start_time")String start_time,@Param("end_time")String end_time);
	
	int delete(int id);
	
	Caustic_excessive chaId(int id);
	
	int update(Caustic_excessive caustic_excessive);
	
	int Caustic_excessiveInsert(Caustic_excessive caustic_excessive);
}
