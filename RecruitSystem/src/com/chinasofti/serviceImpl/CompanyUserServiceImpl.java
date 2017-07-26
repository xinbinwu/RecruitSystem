package com.chinasofti.serviceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.chinasofti.dao.Company_userMapper;
import com.chinasofti.model.Company_user;
import com.chinasofti.service.CompanyUserService;

@Component
public class CompanyUserServiceImpl implements CompanyUserService {
	@Resource
	private Company_userMapper company_userMapper;
	@Resource
	private Company_user company_user;

	@Resource
	private Company_user newcuser;

	public Company_userMapper getCompany_userMapper() {
		return company_userMapper;
	}

	public void setCompany_userMapper(Company_userMapper company_userMapper) {
		this.company_userMapper = company_userMapper;
	}

	public Company_user getCompany_user() {
		return company_user;
	}

	public void setCompany_user(Company_user company_user) {
		this.company_user = company_user;
	}

	@Override
	public int insertSelective(Company_user record) {
		// TODO Auto-generated method stub
		return this.company_userMapper.insertSelective(record);
	}

	@Override
	public Company_user selectByPname(String cname) {
		// TODO Auto-generated method stub
		return this.company_userMapper.selectByPname(cname);
	}

	@Override
	public boolean checkPassword(String cusername, String cpwd, String oldcpwd) {
		company_user = company_userMapper.selectByPname(cusername);
		System.out.println(company_user);
		System.out.println(cusername + " " + cpwd + " " + oldcpwd);
		if (company_user != null && company_user.getCpwd().equals(oldcpwd)) {
			newcuser.setCname(cusername);
			newcuser.setCpwd(cpwd);
			System.out.println(newcuser);
			company_userMapper.alterCUserPassword(newcuser);
			System.out.println("checkPassword");
			return true;
		}
		return false;
	}

	@Override
	public String selectcomidByCuserId(int cuserId) {
		return this.company_userMapper.selectcomidByCuserId(cuserId);
	}

}
