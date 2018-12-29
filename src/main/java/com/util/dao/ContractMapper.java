package com.util.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.util.pojo.Contract;

/**
 * 作者:zzq 时间:11点31分 作用:合同接口类
 **/
@Mapper
public interface ContractMapper {
	List<Contract> selectAll(Contract contract);

	int addContract(Contract contract);

	List<Contract> selectshen(Contract contract);

	int he(int id);

	List<Contract> zhixing(Contract contract);

	List<Contract> selectBB(Contract contract);

	// 根据id获取合同详细信息
	List<Contract> selectid(int id);

	// 导出exec
	List<Contract> teacherinfor();
}
