package com.util.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.util.pojo.pifa;

@Mapper
public interface pifaMapper {

	List<pifa> selectAll();
}
