package com.util.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.util.pojo.wholesaler;

@Mapper
public interface wholesalerMapper {
	List<wholesaler> wholesalers();
}
