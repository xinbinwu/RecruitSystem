package com.chinasofti.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.chinasofti.model.Job_info;

@Component
public interface Job_Info_Service {

	List<Job_info> selectAll();

	Job_info selectByJobId(int id);

	List<Job_info> searchLikeName(String name);
	
	int insert(Job_info job_info);
	
	List<Job_info> selectAllPage(Integer startPos,Integer pageSize);
	
	int selectAllCount();
	
	
}
