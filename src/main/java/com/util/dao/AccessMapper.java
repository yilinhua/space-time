package com.util.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.util.pojo.Access;

@Mapper
public interface AccessMapper {

	
	List<Access> selectAll();
}
