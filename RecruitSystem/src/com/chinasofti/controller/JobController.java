package com.chinasofti.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.Joinable;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.model.Deliver;
import com.chinasofti.model.Job_info;
import com.chinasofti.model.Personal_user;
import com.chinasofti.service.DeliverService;
import com.chinasofti.service.Job_Info_Service;
import com.chinasofti.service.PersonalUserService;

@Controller
public class JobController {

	@Resource
	private PersonalUserService service;
	@Resource
	private Job_info job_info;
	@Resource
	private Job_Info_Service job_Info_Service;
	@Resource
	private Personal_user userSession;

	@Resource
	private Personal_user MyResumeUser;

	@Resource
	private Personal_user userSelectByName;

	@Resource
	private ModelAndView mav;
	@Resource
	private Deliver deliver;
	@Resource
	private DeliverService deliverService;

	@RequestMapping("/job.action")
	public ModelAndView MyResume(HttpServletRequest request, HttpServletResponse response, Model model) {

		List<Job_info> jobList = job_Info_Service.selectAll();

		for (Job_info job_info : jobList) {
			System.out.println(job_info);
		}

		request.setAttribute("jobList", jobList);
		mav.setViewName("technology");
		int size = jobList.size() / 5;
		System.out.println(size);

		return mav;

	}

	@RequestMapping("/job_detail.action")
	public ModelAndView JobDetail(HttpServletRequest request, HttpServletResponse response, Model model) {
		String jobId = request.getParameter("jobid");

		System.out.println(jobId);
		userSession = (Personal_user) request.getSession().getAttribute("user");

		job_info = job_Info_Service.selectByJobId(Integer.parseInt(jobId));

		System.out.println(job_info);

		request.setAttribute("job_info", job_info);
		mav.setViewName("jobDetail");

		return mav;

	}

	@RequestMapping("/job_detail_show.action")
	public ModelAndView JobDetailShow(HttpServletRequest request, HttpServletResponse response, Model model) {
		String jobId = request.getParameter("jobid");

		System.out.println(jobId);

		job_info = job_Info_Service.selectByJobId(Integer.parseInt(jobId));

		System.out.println(job_info);

		request.setAttribute("job_info", job_info);
		mav.setViewName("jobDetailShow");

		return mav;

	}

	@RequestMapping("/deliver.action")
	public void JobDeliver(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		Integer jobId = Integer.parseInt(request.getParameter("jobid"));
		Integer cuserId = Integer.parseInt(request.getParameter("cuserId"));

		userSession = (Personal_user) request.getSession().getAttribute("user");
		if (userSession != null) {
			String pname = userSession.getPname();

			System.out.println("userSession:" + pname);
			Personal_user userSelectByName = service.selectByPname(pname);
			Integer pId = userSelectByName.getPid();

			System.out.println(jobId + "  " + cuserId + "  " + pId);
			deliver.setpId(pId);
			deliver.setJobId(jobId);
			deliver.setCuserId(cuserId);
			if (deliverService.selectByDoubleId(pId, jobId) != null) {
				request.setAttribute("message", "不可重复投递");
				request.getRequestDispatcher("job_detail.action").forward(request, response);
			} else {
				deliverService.insertInfo(deliver);
				request.setAttribute("message", "投递成功");
				request.getRequestDispatcher("job_detail.action").forward(request, response);
			}
		} else {
			response.sendRedirect("login.jsp");
		}

	}

	@RequestMapping("/deliverRecord.action")
	public ModelAndView JobDeliverRecord(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {

		userSession = (Personal_user) request.getSession().getAttribute("user");
		if (userSession != null) {
			String pname = userSession.getPname();
			System.out.println("userSession:" + pname);
			Personal_user userSelectByName = service.selectByPname(pname);
			Integer pId = userSelectByName.getPid();
			List<Deliver> selectAllDeliverById = deliverService.selectAllDeliverById(pId);
			for (Deliver deliver : selectAllDeliverById) {
				System.out.println(deliver);
			}
			request.setAttribute("selectAllDeliverById", selectAllDeliverById);
			mav.setViewName("DeliveryRecord");

			return mav;
		} else {
			mav.setViewName("login");
			return mav;
		}

	}

	@RequestMapping("/jobSearchLikeName.action")
	public ModelAndView jobSearchLikeName(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		String name = request.getParameter("keyword");

		System.out.println(name);
		List<Job_info> searchLikeName = job_Info_Service.searchLikeName(name);
		for (Job_info job_info : searchLikeName) {
			System.out.println(job_info);
		}
		request.setAttribute("searchLikeName", searchLikeName);
		mav.setViewName("technologyBySearch");

		return mav;

	}

}
