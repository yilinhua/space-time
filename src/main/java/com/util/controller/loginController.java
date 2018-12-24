package com.util.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.util.service.UserService;

@Controller
public class loginController {

	@Autowired
	private UserService userService;

	@RequestMapping("/index.html")
	public String login() {
		return "Login";
	}

	@RequestMapping("/login")
	public String login1(Model model, @RequestParam(value="name")String name, @RequestParam(value="password")String password,HttpSession 
			session) {
		String pwd = userService.select(name);
		if (password.equals(pwd)) {
			session.setAttribute("name", name);
			return "Index";
		}
		return "Login";
	}
}
