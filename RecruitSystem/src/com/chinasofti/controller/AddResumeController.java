package com.chinasofti.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.model.Edu_background;
import com.chinasofti.model.Personal_user;
import com.chinasofti.model.Work_experience;
import com.chinasofti.service.EduBackgroundService;
import com.chinasofti.service.PersonalUserService;
import com.chinasofti.service.Work_experienceService;

@Controller
public class AddResumeController {
	@Resource
	private PersonalUserService service;
	@Resource
	private Personal_user user;
	@Resource
	private ModelAndView mav;
	@Resource
	private Edu_background edu;
	@Resource
	private EduBackgroundService eduBackgroundService;
	@Resource
	private Work_experience work_experience;
	@Resource
	private Work_experienceService work_experienceService;

	@RequestMapping("/save_employee.action")
	public String save_employee(HttpServletRequest request, HttpServletResponse response, Model model) {
		String basic_name = request.getParameter("basic_name");
		String basic_sex = request.getParameter("basic_sex");
		String basic_age = request.getParameter("basic_age");
		String basic_email = request.getParameter("basic_email");

		System.out.println(basic_name + "  " + basic_sex + "  " + basic_age + "  " + basic_email);

		user.setPuname(basic_name);
		user.setSex(basic_sex);
		user.setAge(Integer.parseInt(basic_age));
		user.setEmail(basic_email);
		service.insertSelective(user);

		model.addAttribute("user", user);
		return "MyResume";

	}

	@RequestMapping("/save_edu.action")
	public void save_edu(HttpServletRequest request, HttpServletResponse response) {
		String save_sch_name = request.getParameter("save_sch_name");
		String save_maj_name = request.getParameter("save_maj_name");
		String save_edu_name = request.getParameter("save_edu_name");
		edu.setEdu(save_edu_name);
		edu.setMajName(save_maj_name);
		edu.setSchName(save_sch_name);
		eduBackgroundService.insertSelective(edu);

	}

	@RequestMapping("/save_work_exper.action")
	public void save_work_exper(HttpServletRequest request, HttpServletResponse response) {
		String save_com_name = request.getParameter("save_com_name");
		String save_job_name = request.getParameter("save_job_name");
		String save_job_cotent = request.getParameter("save_job_cotent");
		work_experience.setComName(save_com_name);
		work_experience.setJobName(save_job_name);
		work_experience.setWorkContent(save_job_cotent);
		work_experienceService.insertSelective(work_experience);

	}

}
