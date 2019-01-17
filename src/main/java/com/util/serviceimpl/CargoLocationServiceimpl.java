package com.util.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.util.dao.CargoLocationMapper;
import com.util.pojo.CargoLocation;

import com.util.service.CargoLocationService;

@Service
@Transactional
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


	@Override
	public com.util.pojo.CargoLocation chaId(int id) {
		// TODO Auto-generated method stub
		return CargoLocation.chaId(id);
	}


	@Override
	public int update(com.util.pojo.CargoLocation cargo) {
		// TODO Auto-generated method stub
		return CargoLocation.update(cargo);
	}


	@Override
	public int huoWeiInsert(com.util.pojo.CargoLocation cargo) {
		// TODO Auto-generated method stub
		return CargoLocation.huoWeiInsert(cargo);
	}
}