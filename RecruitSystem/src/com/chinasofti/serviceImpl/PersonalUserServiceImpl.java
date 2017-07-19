package com.chinasofti.serviceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.chinasofti.dao.Personal_userMapper;
import com.chinasofti.model.Personal_user;
import com.chinasofti.service.PersonalUserService;

@Component
public class PersonalUserServiceImpl implements PersonalUserService {

	@Resource
	private Personal_userMapper personal_userMapper;
	@Resource
	private Personal_user personal_user;

	public Personal_user getPersonal_user() {
		return personal_user;
	}

	public void setPersonal_user(Personal_user personal_user) {
		this.personal_user = personal_user;
	}

	public Personal_userMapper getPersonal_userMapper() {
		return personal_userMapper;
	}

	public void setPersonal_userMapper(Personal_userMapper personal_userMapper) {
		this.personal_userMapper = personal_userMapper;
	}

	@Override
	public int deleteByPrimaryKey(Integer pid) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Personal_user record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Personal_user record) {
		// TODO Auto-generated method stub
		return this.personal_userMapper.insertSelective(record);
	}

	@Override
	public Personal_user selectByPrimaryKey(Integer pid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(Personal_user record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Personal_user record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Personal_user selectByPname(String pname) {
		// TODO Auto-generated method stub
		return this.personal_userMapper.selectByPname(pname);
	}

	public void setDao(Personal_userMapper dao) {
		this.personal_userMapper = dao;
	}

	@Override
	public Personal_user checkLogin(String username, String password) {
		personal_user = personal_userMapper.selectByPname(username);
		System.out.println("username"+username+",password"+password);
		if (personal_user != null && personal_user.getPpwd().equals(password)) {
			return personal_user;
		}
		return null;
	}

}
