package com.user.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.user.demo.dao.UserDao;
import com.user.demo.pojo.User;

@Service
public class UserService {
	@Autowired
	private UserDao userDao;
	public void saveUser(User user) {
		userDao.saveUser(user);
	}
	public List<User> getAllUser(){
		return userDao.getAllUser();
	}
	public void deleteUser(Integer id) {
		userDao.deleteUserById(id);
		
	}
}
