package com.chinasofti.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.chinasofti.model.Job_info;

@Repository


public interface Job_infoMapper {
	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table job_info
	 *
	 * @mbggenerated Tue Jul 18 11:12:09 CST 2017
	 */
	int deleteByPrimaryKey(Integer jobId);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table job_info
	 *
	 * @mbggenerated Tue Jul 18 11:12:09 CST 2017
	 */
	int insert(Job_info record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table job_info
	 *
	 * @mbggenerated Tue Jul 18 11:12:09 CST 2017
	 */
	int insertSelective(Job_info record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table job_info
	 *
	 * @mbggenerated Tue Jul 18 11:12:09 CST 2017
	 */
	Job_info selectByPrimaryKey(Integer jobId);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table job_info
	 *
	 * @mbggenerated Tue Jul 18 11:12:09 CST 2017
	 */
	int updateByPrimaryKeySelective(Job_info record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds
	 * to the database table job_info
	 *
	 * @mbggenerated Tue Jul 18 11:12:09 CST 2017
	 */
	int updateByPrimaryKey(Job_info record);

	List<Job_info> selectAll();
	
	Job_info selectByJobId(int id);
}