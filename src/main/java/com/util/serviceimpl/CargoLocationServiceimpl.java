package com.util.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.util.dao.CargoLocationMapper;
import com.util.pojo.CargoLocation;

import com.util.service.CargoLocationService;

@Service
public class CargoLocationServiceimpl implements CargoLocationService {

	@Autowired
	private CargoLocationMapper CargoLocation;

	@Override
	public List<CargoLocation> selectAlls(String goodsName) {
		// TODO Auto-generated method stub

		return CargoLocation.selectAlls(goodsName);
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return CargoLocation.delete(id);
	}

	@Override
	public List<CargoLocation> selectAll() {
		// TODO Auto-generated method stub
		return CargoLocation.selectAll();
	}
}