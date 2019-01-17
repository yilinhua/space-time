package com.util.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.util.pojo.retail;

@Mapper
public interface retailMapper {

	List<retail> retail();
}
