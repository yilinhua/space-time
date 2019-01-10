package com.util.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.util.pojo.renyuan;

@Mapper
public interface renyuanMapper {

	List<renyuan> list();
}
