package com.chinasofti.service;

import org.springframework.stereotype.Component;

import com.chinasofti.model.Company_user;

@Component
public interface CompanyUserService {

	String selectcomidByCuserId(int cuserId);

	int insertSelective(Company_user record);

	Company_user selectByPname(String pname);

	boolean checkPassword(String cusername, String cpwd, String oldcpwd);

	int insert(Company_user cuser);

	Company_user selectByCuserid(Integer cuserid);
	
	String selectcomnamebycname(String cname);
}
