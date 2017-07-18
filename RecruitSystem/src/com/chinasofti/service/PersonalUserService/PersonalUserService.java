package com.chinasofti.service.PersonalUserService;

import org.springframework.stereotype.Component;

import com.chinasofti.model.personal_user;

@Component
public interface PersonalUserService {

	int deleteByPrimaryKey(Integer pid);

	int insert(personal_user record);

	int insertSelective(personal_user record);

	personal_user selectByPrimaryKey(Integer pid);

	personal_user selectByPname(String pname);

	int updateByPrimaryKeySelective(personal_user record);

	int updateByPrimaryKey(personal_user record);

}
