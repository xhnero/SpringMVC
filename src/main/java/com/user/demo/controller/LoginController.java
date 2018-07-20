package com.user.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.user.demo.pojo.User;
import com.user.demo.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;
	@RequestMapping(value="index.html",method=RequestMethod.GET)
	public String index() {
		return "index.jsp";
	}
	@RequestMapping(value="validateUser.html",method=RequestMethod.POST)
	public String validateUser(Model model,@RequestParam("username") String username,@RequestParam("password") String password) {
		if(loginService.isValidation(username, password)) {
			List<User> userList = loginService.getAll();
			model.addAttribute("userList",userList);
			User user = new User();
			model.addAttribute("user",user);
			return "userDashboard.jsp";
		}else {
			return "index.jsp";
		}
	}
}
