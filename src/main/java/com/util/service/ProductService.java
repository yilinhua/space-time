package com.util.service;

import java.util.List;


import com.util.pojo.Product;

public interface ProductService {
List<Product> selectAll(String  name,String Drugs_type);
	
	int delete(int id);
	
	Product chaId(int id);
	
	int update(Product product);
	
	int productInsert(Product product);
	
	
}
