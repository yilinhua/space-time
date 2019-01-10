package com.util.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.util.pojo.purchase;

@Mapper
public interface purchaseMapper {

	List<purchase> size1();

}
