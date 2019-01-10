package com.util.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.util.pojo.huowu;

@Mapper
public interface huowuMapper {

	List<huowu> list();
}
