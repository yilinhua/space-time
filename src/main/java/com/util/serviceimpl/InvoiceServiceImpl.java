package com.util.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.util.dao.InvoiceMapper;
import com.util.pojo.Invoice;
import com.util.service.InvoiceService;
@Service
public class InvoiceServiceImpl implements InvoiceService{

	@Autowired
	private InvoiceMapper invoiceMapper;
	@Override
	public List<Invoice> selectList() {
		// TODO Auto-generated method stub
		return invoiceMapper.selectList();
	}

}
