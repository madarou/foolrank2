package com.uunemo.service;

import java.util.Collections;
import java.util.Set;

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
		return userDao.findByEmail(email);
	}

	public Set<String> findRoles(String username) {
		return userDao.findRoles(username);
	}

	public Set<String> findPermissions(String username) {
		return userDao.findPermissions(username);
	}

	public User findByUsername(String username) {
		return userDao.findByUsername(username);
	}
}
