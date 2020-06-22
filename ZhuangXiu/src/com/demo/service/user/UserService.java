package com.demo.service.user;

import java.util.List;

import com.demo.entity.user.Userpojo;

public interface UserService {

	int userLogin(String name,String password);
	
	List<Userpojo> findUserList();
	
	Boolean addUser(String name,String password,Integer userType);
	
	Boolean editUser(String name,String password,Integer userType,Integer userId);
	
	Boolean deleteUser(Integer userId);

	List findUserById(Integer userId);
}
