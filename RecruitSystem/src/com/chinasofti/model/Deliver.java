package com.chinasofti.model;

import org.springframework.stereotype.Component;

@Component
public class Deliver {
	private int id;
	private int userId;
	private int jobId;
	private int companyId;
	private String companyName;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getJobId() {
		return jobId;
	}

	public void setJobId(int jobId) {
		this.jobId = jobId;
	}

	public int getCompanyId() {
		return companyId;
	}

	public void setCompanyId(int companyId) {
		this.companyId = companyId;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + companyId;
		result = prime * result + ((companyName == null) ? 0 : companyName.hashCode());
		result = prime * result + id;
		result = prime * result + jobId;
		result = prime * result + userId;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Deliver other = (Deliver) obj;
		if (companyId != other.companyId)
			return false;
		if (companyName == null) {
			if (other.companyName != null)
				return false;
		} else if (!companyName.equals(other.companyName))
			return false;
		if (id != other.id)
			return false;
		if (jobId != other.jobId)
			return false;
		if (userId != other.userId)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Deliver [id=" + id + ", userId=" + userId + ", jobId=" + jobId + ", companyId=" + companyId
				+ ", companyName=" + companyName + "]";
	}

	public Deliver() {
	}

	public Deliver(int userId, int jobId, int companyId, String companyName) {
		super();
		this.userId = userId;
		this.jobId = jobId;
		this.companyId = companyId;
		this.companyName = companyName;
	}

	public Deliver(int id, int userId, int jobId, int companyId, String companyName) {
		super();
		this.id = id;
		this.userId = userId;
		this.jobId = jobId;
		this.companyId = companyId;
		this.companyName = companyName;
	}

}
