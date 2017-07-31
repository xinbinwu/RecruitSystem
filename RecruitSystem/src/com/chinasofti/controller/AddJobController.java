package com.chinasofti.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

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
	private Job_info newjob;
	@Resource
	private Company_user cuser;

	@Resource
	private ModelAndView mav;

	@RequestMapping("/addjob.action")
	public ModelAndView addJob(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ParseException {
		HttpSession session = request.getSession();
		// cuser= (Company_user) request.getAttribute("cuser");
		cuser = (Company_user) session.getAttribute("cuser");
		System.out.println(cuser);
		int cuserid= cuser.getCuserId();
		//int cuserid = 2;
		List<Job_info> list;
		int jobId = Integer.parseInt(request.getParameter("id"));
		String jobName = request.getParameter("name");
		String jobSal = request.getParameter("jobSal");
		String jobYear = request.getParameter("jobYear");
		String jobEdu = request.getParameter("jobEdu");
		job_info.setJobId(jobId);
		job_info.setJobEdu(jobEdu);
		job_info.setJobName(jobName);
		job_info.setJobSal(jobSal);
		job_info.setJobYear(jobYear);
		job_info.setCuserId(cuserid);

		if (cuser != null) {
			if (job_infoService.insert(job_info) != 0) {
				System.out.println(job_info);
				list = job_infoService.selectByCuserId(cuserid);
				mav.addObject("list", list);
				mav.setViewName("jobmanage");
				return mav;

			} else {
				mav.addObject("message", "发布新职位失败");
				mav.setViewName("addjob");
				return mav;
			}
		} else {
			mav.setViewName("login");
			return mav;
		}

	}
	
	@RequestMapping("/manageDeliver.action")
	public ModelAndView showJobmanage(HttpServletRequest request, HttpServletResponse response, Model model){
		HttpSession session = request.getSession();
		cuser = (Company_user) session.getAttribute("cuser");
		int cuserid= cuser.getCuserId();
		List<Job_info> list;
		list=job_infoService.selectByCuserId(cuserid);
		if (!list.isEmpty()) {
			mav.addObject("list", list);
			mav.setViewName("jobmanage");
		} else {
			mav.addObject("message", "还没有招聘信息");
			mav.setViewName("releasejob");
		}
		return mav;
		
	}
	
	@RequestMapping("/showjobaddpage.action")
	public ModelAndView showJobAddPage(HttpServletRequest request, HttpServletResponse response, Model model){
		
		mav.setViewName("releasejob");
		return mav;
	}
	@RequestMapping("/showalterpage.action")
	public ModelAndView showAlterPage(HttpServletRequest request, HttpServletResponse response, Model model){
		int jobid= Integer.parseInt(request.getParameter("jobid").trim());
		System.out.println(jobid);
		mav.addObject("jobid",jobid);
		mav.setViewName("alterjob");
		return mav;
	}
	
	@RequestMapping("/alterjob.action")
	public ModelAndView changeJob(HttpServletRequest request, HttpServletResponse response, Model model){
		HttpSession session = request.getSession();
		cuser= (Company_user) session.getAttribute("cuser");
		int cuserid= cuser.getCuserId();
		System.out.println(cuser);
		int jobid= Integer.parseInt(request.getParameter("jobid").trim());
		String jobName = request.getParameter("name");
		String jobSal = request.getParameter("jobSal");
		String jobYear = request.getParameter("jobYear");
		String jobEdu = request.getParameter("jobEdu");
		newjob.setJobId(jobid);
		newjob.setJobEdu(jobEdu);
		newjob.setJobName(jobName);
		newjob.setJobSal(jobSal);
		newjob.setJobYear(jobYear);
		newjob.setCuserId(cuserid);
		System.out.println(newjob);
		List<Job_info> list;
		
		if(job_infoService.updateByPrimaryKey(newjob)!=0){
			list=job_infoService.selectByCuserId(cuserid);
			mav.addObject("list", list);
			mav.setViewName("jobmanage");
		}else {
			mav.setViewName("alterjob");
		}
		return mav;
		
	}
	

	public ModelAndView showDelivery(HttpServletRequest request, HttpServletResponse response, Model model){
		return mav;
	}
}
