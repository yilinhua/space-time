package com.util.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.util.pojo.Product;

@Mapper
public interface ProductMapper {
    List<Product> selectAll(@Param("name")String  name,@Param("Drugs_type")String Drugs_type);
	
	int delete(int id);
	
	Product chaId(int id);
	
	int update(Product product);
	
	int productInsert(Product product);
}
