package com.chinasofti.service;

import org.springframework.stereotype.Component;

import com.chinasofti.model.Company_user;

@Component
public interface CompanyUserService {

	int insertSelective(Company_user record);

	Company_user selectByPname(String pname);

}
