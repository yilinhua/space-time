package com.util.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.util.pojo.ling;

@Mapper
public interface lingMapper {

	List<ling> selectAll();
	
}
