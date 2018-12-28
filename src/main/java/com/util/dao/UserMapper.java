package com.util.dao;

/**
 *作者:zzq
 *时间:11点31分
 *作用:用户接口类
 **/
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper {
	String select(String name);
}
