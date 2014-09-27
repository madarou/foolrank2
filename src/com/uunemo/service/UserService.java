package com.uunemo.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.uunemo.beans.User;
import com.uunemo.daos.UserDao;

@Service("UserService")
public class UserService {
  
	@Resource
	private UserDao userDao;
	
	public User getUserByName(String username){
		
		return userDao.findByName(username);
		
	}
	
	public User getUserById(int uid){
		return userDao.findById(uid);
	}

	public User getUserByEmail(String email) {
		// TODO Auto-generated method stub
		return userDao.findByEmail(email);
	}
}
