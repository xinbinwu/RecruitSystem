package com.chinasofti.service;

import org.springframework.stereotype.Component;

import com.chinasofti.model.Edu_background;
@Component
public interface EduBackgroundService {
	
	 int insertSelective(Edu_background record);


}
