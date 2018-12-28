package com.util.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.util.pojo.Warehousing;
@Mapper
public interface WarehousingMapper {
	List<Warehousing>selectList();

}
