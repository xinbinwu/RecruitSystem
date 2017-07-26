package com.chinasofti.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.chinasofti.model.Job_info;

@Component
public interface Job_Info_Service {

	List<Job_info> selectAll();

	Job_info selectByJobId(int id);

	List<Job_info> searchLikeName(String name);
}
