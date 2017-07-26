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
	
	@Resource
	private Personal_user newpuser;

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
	public Personal_user selectByPrimaryKey(Integer pid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPnameSelective(String puname, String sex, Integer age, String email, String pname) {
		// TODO Auto-generated method stub
		return this.personal_userMapper.updateByPnameSelective(puname, sex, age, email, pname);
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
		System.out.println("username" + username + ",password" + password);
		if (personal_user != null && personal_user.getPpwd().equals(password)) {
			return personal_user;
		}
		return null;
	}

	@Override
	public int insertSelective(Personal_user record, String pname) {
		// TODO Auto-generated method stub
		return this.personal_userMapper.insertSelective(record, pname);
	}

	@Override
	public int insertSelectiveRegister(Personal_user puser) {
		return this.personal_userMapper.insertSelectiveRegister(puser);

	}

	@Override
	public int updateEduSelective(String schName, String majName, String edu, String pname) {
		// TODO Auto-generated method stub
		return this.personal_userMapper.updateEduSelective(schName, majName, edu, pname);
	}

	@Override
	public int updateWorkSelective(String comName, String jobName, String workContent, String pname) {
		// TODO Auto-generated method stub
		return this.personal_userMapper.updateWorkSelective(comName, jobName, workContent, pname);
	}

	@Override
	public boolean checkPassword(String pusername, String ppwd, String oldppwd) {
		personal_user = personal_userMapper.selectByPname(pusername);
		System.out.println(personal_user);
		System.out.println(pusername + " " + ppwd + " " + oldppwd);
		if (personal_user != null && personal_user.getPpwd().equals(oldppwd)) {
			newpuser.setPname(pusername);
			newpuser.setPpwd(ppwd);
			personal_userMapper.alterPUserPassword(newpuser);
			System.out.println("checkPassword");
			return true;
		}
		return false;
	}
}
