package com.demo.service.impl.user;

import java.util.List;

import com.demo.dao.user.UserDao;
import com.demo.dao.impl.UserDaoImpl;
import com.demo.entity.user.Userpojo;
import com.demo.service.user.UserService;

public class UserServiceImpl implements UserService {

	UserDao userDao = new UserDaoImpl();
	
	@Override
	public int userLogin(String name, String password) {
		return userDao.userLogin(name, password);
	}

	@Override
	public List<Userpojo> findUserList() {
		return userDao.findUserList();
	}

	@Override
	public Boolean addUser(String name, String password, Integer userType) {
		return userDao.addUser(name,password,userType);
	}

	@Override
	public Boolean deleteUser(Integer userId) {
		return userDao.deleteUser(userId);
	}

	@Override
	public Boolean editUser(String name, String password, Integer userType,Integer userId) {
		return userDao.editUser(name,password,userType,userId);
	}

	@Override
	public List findUserById(Integer userId) {
		return userDao.findUserById(userId);
	}
	
	
	
}
