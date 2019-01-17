package com.util.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.util.dao.ProductMapper;

import com.util.pojo.Product;
import com.util.service.ProductService;

@Service
@Transactional
public class ProductServiceImpl implements ProductService{

	@Autowired
	ProductMapper mapper;

	@Override
	public List<Product> selectAll(String name,String Drugs_type) {
		// TODO Auto-generated method stub
		return mapper.selectAll(name,Drugs_type);
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return mapper.delete(id);
	}

	@Override
	public Product chaId(int id) {
		// TODO Auto-generated method stub
		return mapper.chaId(id);
	}

	@Override
	public int update(Product product) {
		// TODO Auto-generated method stub
		return mapper.update(product);
	}

	@Override
	public int productInsert(Product product) {
		// TODO Auto-generated method stub
		return mapper.productInsert(product);
	}

	


}
