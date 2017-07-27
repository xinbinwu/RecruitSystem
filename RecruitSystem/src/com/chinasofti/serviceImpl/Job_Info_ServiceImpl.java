package com.chinasofti.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.ui.Model;

import com.chinasofti.dao.Job_infoMapper;
import com.chinasofti.model.Job_info;
import com.chinasofti.service.Job_Info_Service;

@Component
public class Job_Info_ServiceImpl implements Job_Info_Service {
	@Resource
	private Job_infoMapper job_infoMapper;

	@Override
	public List<Job_info> selectAll() {
		// TODO Auto-generated method stub
		return this.job_infoMapper.selectAll();
	}

	@Override
	public Job_info selectByJobId(int id) {
		// TODO Auto-generated method stub
		return this.job_infoMapper.selectByJobId(id);
	}

	@Override
	public List<Job_info> searchLikeName(String name) {
		// TODO Auto-generated method stub
		return this.job_infoMapper.searchLikeName(name);
	}

	@Override
	public int insert(Job_info job_info) {
		// TODO Auto-generated method stub
		return this.job_infoMapper.insert(job_info);
	}

	@Override
	public List<Job_info> selectAllPage(Integer startPos, Integer pageSize) {
		// TODO Auto-generated method stub
		return job_infoMapper.selectAllPage(startPos, pageSize);
	}

	@Override
	public int selectAllCount() {
		// TODO Auto-generated method stub
		return job_infoMapper.selectAllCount();
	}

}
