package com.chinasofti.model;

import org.springframework.stereotype.Component;

@Component
public class Deliver {
	private int id;
	private int pId;
	private int jobId;
	private int comId;

	private Personal_user personal_user;
	private Job_info job_info;
	private Company_info company_info;

	public Personal_user getPersonal_user() {
		return personal_user;
	}

	public void setPersonal_user(Personal_user personal_user) {
		this.personal_user = personal_user;
	}

	public Deliver(int id, int pId, int jobId, int comId, Personal_user personal_user, Job_info job_info,
			Company_info company_info) {
		super();
		this.id = id;
		this.pId = pId;
		this.jobId = jobId;
		this.comId = comId;
		this.personal_user = personal_user;
		this.job_info = job_info;
		this.company_info = company_info;
	}

	public Job_info getJob_info() {
		return job_info;
	}

	public void setJob_info(Job_info job_info) {
		this.job_info = job_info;
	}

	public Company_info getCompany_info() {
		return company_info;
	}

	public void setCompany_info(Company_info company_info) {
		this.company_info = company_info;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getpId() {
		return pId;
	}

	public void setpId(int pId) {
		this.pId = pId;
	}

	public int getJobId() {
		return jobId;
	}

	public void setJobId(int jobId) {
		this.jobId = jobId;
	}

	public int getComId() {
		return comId;
	}

	public void setComId(int comId) {
		this.comId = comId;
	}

	@Override
	public String toString() {
		return "Deliver [id=" + id + ", pId=" + pId + ", jobId=" + jobId + ", comId=" + comId + ", personal_user="
				+ personal_user + ", job_info=" + job_info + ", company_info=" + company_info + "]";
	}

	public Deliver(int id, int pId, int jobId, int comId) {
		super();
		this.id = id;
		this.pId = pId;
		this.jobId = jobId;
		this.comId = comId;
	}

	public Deliver() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Deliver(int pId, int jobId, int comId) {
		super();
		this.pId = pId;
		this.jobId = jobId;
		this.comId = comId;
	}

}
