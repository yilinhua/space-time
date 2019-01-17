package com.util.service;

import java.util.List;

import com.util.pojo.Check;

public interface CheckService {
	List<Check> selectAll(String check_type, String Drug_type, String start_time, String end_time);

	int checkInsert(Check check);

	List<Check> list();
}
