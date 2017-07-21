package com.chinasofti.serviceImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.chinasofti.dao.Edu_backgroundMapper;
import com.chinasofti.model.Edu_background;
import com.chinasofti.service.EduBackgroundService;

@Component
public class EduBackgroundServiceImpl implements EduBackgroundService {
	
	@Resource
	private Edu_backgroundMapper  edu_backgroundMapper;

	@Override
	public int insertSelective(Edu_background record) {
		// TODO Auto-generated method stub
		return this.edu_backgroundMapper.insertSelective(record);
	}

}
