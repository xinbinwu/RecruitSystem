package com.chinasofti.service;

import org.springframework.stereotype.Component;

import com.chinasofti.model.Personal_user;

@Component
public interface PersonalUserService {

	int deleteByPrimaryKey(Integer pid);

	int insert(Personal_user record);

	int insertSelective(Personal_user record);

	Personal_user selectByPrimaryKey(Integer pid);

	Personal_user selectByPname(String pname);

	int updateByPrimaryKeySelective(Personal_user record);

	int updateByPrimaryKey(Personal_user record);
	
	Personal_user checkLogin(String username, String password);

}
