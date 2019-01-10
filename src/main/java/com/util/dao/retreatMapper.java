package com.util.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.util.pojo.retreat;

@Mapper
public interface retreatMapper {

	List<retreat> top();

	List<retreat> name1();

}
