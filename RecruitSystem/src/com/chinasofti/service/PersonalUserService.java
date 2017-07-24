package com.chinasofti.service;

import org.springframework.stereotype.Component;

import com.chinasofti.model.Personal_user;

@Component
public interface PersonalUserService {

	int deleteByPrimaryKey(Integer pid);

	int insert(Personal_user record);

	int insertSelective(Personal_user record, String pname);

	Personal_user selectByPrimaryKey(Integer pid);

	Personal_user selectByPname(String pname);

	int updateByPnameSelective(String puname, String sex, Integer age, String email, String pname);

	int updateByPrimaryKey(Personal_user record);

	Personal_user checkLogin(String username, String password);

	int insertSelectiveRegister(Personal_user puser);

	int updateEduSelective(String schName, String majName, String edu, String pname);

	int updateWorkSelective(String comName, String jobName, String workContent, String pname);

}
