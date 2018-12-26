package com.util.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.util.dao.UserMapper;
import com.util.pojo.User;
import com.util.service.UserService;

/**
 *作者:zzq
 *时间:11点31分
 *作用:用户service实现类
 **/
@Service
public class UserServiceimpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	@Override
	public String select(String name) {
		// TODO Auto-generated method stub
		return userMapper.select(name);
	}

}
