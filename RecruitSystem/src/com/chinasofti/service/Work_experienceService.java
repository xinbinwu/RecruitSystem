package com.chinasofti.service;

import org.springframework.stereotype.Component;

import com.chinasofti.model.Work_experience;
@Component
public interface Work_experienceService {
	
	int insertSelective(Work_experience record);

}
