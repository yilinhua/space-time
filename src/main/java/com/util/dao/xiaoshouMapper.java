package com.util.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.util.pojo.xiaoshou;

@Mapper
public interface xiaoshouMapper {

	List<xiaoshou> list1();
}
