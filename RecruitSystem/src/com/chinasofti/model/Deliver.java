package com.chinasofti.model;

import org.springframework.stereotype.Component;

@Component
public class Deliver {
	private int id;
	private int pId;
	private int jobId;
	private int cuserId;

	private Personal_user personal_user;
	private Job_info job_info;
	private Company_user company_user;
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
	public int getCuserId() {
		return cuserId;
	}
	public void setCuserId(int cuserId) {
		this.cuserId = cuserId;
	}
	public Personal_user getPersonal_user() {
		return personal_user;
	}
	public void setPersonal_user(Personal_user personal_user) {
		this.personal_user = personal_user;
	}
	public Job_info getJob_info() {
		return job_info;
	}
	public void setJob_info(Job_info job_info) {
		this.job_info = job_info;
	}
	public Company_user getCompany_user() {
		return company_user;
	}
	public void setCompany_user(Company_user company_user) {
		this.company_user = company_user;
	}
	@Override
	public String toString() {
		return "Deliver [id=" + id + ", pId=" + pId + ", jobId=" + jobId + ", cuserId=" + cuserId + ", personal_user="
				+ personal_user + ", job_info=" + job_info + ", company_user=" + company_user + "]";
	}
	public Deliver(int id, int pId, int jobId, int cuserId, Personal_user personal_user, Job_info job_info,
			Company_user company_user) {
		super();
		this.id = id;
		this.pId = pId;
		this.jobId = jobId;
		this.cuserId = cuserId;
		this.personal_user = personal_user;
		this.job_info = job_info;
		this.company_user = company_user;
	}
	public Deliver(int pId, int jobId, int cuserId) {
		super();
		this.pId = pId;
		this.jobId = jobId;
		this.cuserId = cuserId;
	}
	public Deliver() {
		super();
		// TODO Auto-generated constructor stub
	}

}
