package com.service;

import com.dao.UserDao;
import com.entity.CounsellorBean;
import com.entity.UserBean;

public class UserService {
	UserDao ud = new UserDao();
	
	public UserBean ValidUser(String email,String password)
	{
		return ud.getUserByEmailandPassword(email, password);
	}

}
