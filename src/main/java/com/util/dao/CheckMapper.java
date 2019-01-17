package com.util.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.util.pojo.Check;

@Mapper
public interface CheckMapper {
	List<Check> selectAll(@Param("check_type") String check_type, @Param("Drug_type") String Drug_type,
			@Param("start_time") String start_time, @Param("end_time") String end_time);

	int checkInsert(Check check);

	List<Check> list();
}
