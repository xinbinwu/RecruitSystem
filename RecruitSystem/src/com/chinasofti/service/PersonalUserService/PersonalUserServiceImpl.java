package com.chinasofti.service.PersonalUserService;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.chinasofti.dao.personal_userMapper;
import com.chinasofti.model.personal_user;

@Component
public class PersonalUserServiceImpl implements PersonalUserService {
	
	@Resource
	private personal_userMapper personal_userMapper;

	public personal_userMapper getPersonal_userMapper() {
		return personal_userMapper;
	}

	public void setPersonal_userMapper(personal_userMapper personal_userMapper) {
		this.personal_userMapper = personal_userMapper;
	}

	@Override
	public int deleteByPrimaryKey(Integer pid) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(personal_user record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(personal_user record) {
		// TODO Auto-generated method stub
		return this.personal_userMapper.insertSelective(record);
	}

	@Override
	public personal_user selectByPrimaryKey(Integer pid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(personal_user record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(personal_user record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public personal_user selectByPname(String pname) {
		// TODO Auto-generated method stub
		return this.personal_userMapper.selectByPname(pname);
	}

}
