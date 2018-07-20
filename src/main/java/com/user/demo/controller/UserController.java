package com.user.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.user.demo.pojo.User;
import com.user.demo.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	@RequestMapping(value="processUser.html",method=RequestMethod.POST)
	public String processUser(Model model,@RequestAttribute("user")User user) {
		
		userService.saveUser(user);
		List<User> userList = userService.getAllUser();
		model.addAttribute("userList",userList);
		model.addAttribute("user",user);
		return "userDashboard.jsp";
	}
	@RequestMapping(value="deleteUser.html",method=RequestMethod.GET)
	public String deleteUser(Model model,@RequestParam("id") Integer id) {
		userService.deleteUser(id);
		List<User> userList = userService.getAllUser();
		model.addAttribute("userList",userList);
		User user = new User();
		model.addAttribute("user",user);
		return "userDashboard.jsp";
	}
}
