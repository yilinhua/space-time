package com.util.service;

import java.util.List;



import com.util.pojo.Staff;

public interface StaffService {
    List<Staff> selectAll(String  name,String code);
	
	int delete(int id);
	
	Staff chaId(int id);
	
	int update(Staff staff);
	
	int StaffInsert(Staff staff);
}
