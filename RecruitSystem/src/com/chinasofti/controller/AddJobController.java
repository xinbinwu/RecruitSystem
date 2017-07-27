package com.chinasofti.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.model.Company_user;
import com.chinasofti.model.Job_info;
import com.chinasofti.service.CompanyUserService;
import com.chinasofti.service.Job_Info_Service;

@Controller
public class AddJobController {
	@Resource
	private Job_Info_Service job_infoService;
	@Resource
	private CompanyUserService cservice;
	@Resource
	private Job_info job_info;
	@Resource
	private Company_user cuser;

	@Resource
	private ModelAndView mav;

	@RequestMapping("addjob.action")
	public ModelAndView addJob(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ParseException {
		HttpSession session = request.getSession();
		Integer cuserid = (Integer) session.getAttribute("cuserId");
		int jobId = Integer.parseInt(request.getParameter("id"));
		String jobName = request.getParameter("name");
		double jobSal = Double.parseDouble(request.getParameter("jobSal"));
		String jobYear = request.getParameter("jobYear");
		String jobEdu = request.getParameter("jobEdu");
		int comId = Integer.parseInt(cservice.selectcomidByCuserId(cuserid));
		job_info.setJobId(jobId);
		job_info.setCuserId(comId);
		job_info.setJobEdu(jobEdu);
		job_info.setJobName(jobName);
		job_info.setJobSal(jobSal);
		job_info.setJobYear(jobYear);
		if (job_infoService.insert(job_info) != 0) {
			System.out.println(job_info);
			mav.addObject("message", "发布新职位成功");
		} else {
			mav.addObject("message", "发布新职位失败");
		}
		return mav;

	}
}
