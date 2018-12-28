package com.util.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.util.pojo.order;

@Mapper
public interface OrderManagementMapper {
	List<order> selectList();
	
}