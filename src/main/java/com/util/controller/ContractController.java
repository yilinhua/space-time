package com.util.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.util.pojo.Contract;
import com.util.service.ContractService;

@Controller
public class ContractController {

	@Autowired
	private ContractService contractService;

	@RequestMapping("/hetong/selectAll.html")
	public String selectAll1(Model model, Contract contract) {
		List<Contract> list =  contractService.selectAll(contract);
		model.addAttribute("contractNO", contract.getContractNO());
		model.addAttribute("contractStates", contract.getContractStates());
		model.addAttribute("contractType",contract.getContractType());
		model.addAttribute("deliveryType", contract.getDeliveryType());
		model.addAttribute("transportationType", contract.getTransportationType());
		model.addAttribute("list", list);
		return "hetong/selectAll";

	}
}
