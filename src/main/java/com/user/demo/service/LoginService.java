package com.user.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.user.demo.dao.UserDao;
import com.user.demo.pojo.User;

@Service
public class LoginService {
	@Autowired
	private UserDao userDao;
	public Boolean isValidation(String username, String password) {
		User user = userDao.getUserByUsernameAndPassword(username, password);
		if(user==null) return false;
		else return true;
	}
	public List<User> getAll() {
		return userDao.getAllUser();
	}
}
