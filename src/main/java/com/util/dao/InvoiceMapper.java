package com.util.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.util.pojo.Invoice;
@Mapper
public interface InvoiceMapper {
	
	List<Invoice>selectList();

}
