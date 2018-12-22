package com.util.dao;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {
	String select(String name);
}
