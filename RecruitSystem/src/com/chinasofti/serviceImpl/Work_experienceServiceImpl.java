package com.chinasofti.serviceImpl;

import org.springframework.stereotype.Component;

import com.chinasofti.dao.Work_experienceMapper;
import com.chinasofti.model.Work_experience;
import com.chinasofti.service.Work_experienceService;
@Component
public class Work_experienceServiceImpl implements Work_experienceService {
	
	private Work_experienceMapper work_experienceMapper;

	@Override
	public int insertSelective(Work_experience record) {
		// TODO Auto-generated method stub
		return this.work_experienceMapper.insertSelective(record);
	}

}
