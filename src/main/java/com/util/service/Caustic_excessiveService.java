package com.util.service;

import java.util.List;



import com.util.pojo.Caustic_excessive;

public interface Caustic_excessiveService {
List<Caustic_excessive> selectAll(String type,String shelves_number,String start_time,String end_time);
	
	int delete(int id);
	
	Caustic_excessive chaId(int id);
	
	int update(Caustic_excessive caustic_excessive);
	
	int Caustic_excessiveInsert(Caustic_excessive caustic_excessive);
}
