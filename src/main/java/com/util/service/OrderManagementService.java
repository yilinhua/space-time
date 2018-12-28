package com.util.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.util.pojo.order;


public interface OrderManagementService {
	List<order> selectList();

}
