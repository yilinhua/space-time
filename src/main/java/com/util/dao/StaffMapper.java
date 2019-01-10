package com.util.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.util.pojo.Staff;



@Mapper
public interface StaffMapper {
	List<Staff> selectAll(@Param("name")String  name,@Param("code")String code);
	
	int delete(int id);
	
	Staff chaId(int id);
	
	int update(Staff staff);
	
	int StaffInsert(Staff staff);
}
