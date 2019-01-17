package com.util.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.util.pojo.indent;

@Mapper
public interface indentMapper {

	List<indent> selectAll();
}
