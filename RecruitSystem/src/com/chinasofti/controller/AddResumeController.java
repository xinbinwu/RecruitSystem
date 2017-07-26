package com.chinasofti.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.model.Personal_user;
import com.chinasofti.service.PersonalUserService;

@Controller
public class AddResumeController {
	@Resource
	private PersonalUserService service;
	@Resource
	private Personal_user user;

	@Resource
	private Personal_user MyResumeUser;

	@Resource
	private Personal_user userSelectByName;

	@Resource
	private Personal_user userSession;
	@Resource
	private ModelAndView mav;

	@RequestMapping("/MyResume.action")
	public String MyResume(HttpServletRequest request, HttpServletResponse response, Model model) {
		userSession = (Personal_user) request.getSession().getAttribute("user");

		if (userSession != null) {
			String pname = userSession.getPname();
			MyResumeUser = service.selectByPname(pname);
			System.out.println(MyResumeUser);
			model.addAttribute("MyResumeUser", MyResumeUser);
			return "MyResume";
		} else {
			return "login";
		}

	}

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

		userSession = (Personal_user) request.getSession().getAttribute("user");
		String pname = userSession.getPname();

		System.out.println("userSession:" + pname);
		Personal_user userSelectByName = service.selectByPname(pname);
		System.out.println(userSelectByName);

		service.updateByPnameSelective(basic_name, basic_sex, Integer.parseInt(basic_age), basic_email, pname);

		model.addAttribute("user", user);
		return "MyResume";

	}

	@RequestMapping("/save_edu.action")
	public void save_edu(HttpServletRequest request, HttpServletResponse response) {
		String save_sch_name = request.getParameter("save_sch_name");
		String save_maj_name = request.getParameter("save_maj_name");
		String save_edu_name = request.getParameter("save_edu_name");

		System.out.println(save_sch_name + "  " + save_maj_name + "  " + save_edu_name);

		userSession = (Personal_user) request.getSession().getAttribute("user");
		String pname = userSession.getPname();
		System.out.println("userSession:" + pname);

		service.updateEduSelective(save_sch_name, save_maj_name, save_edu_name, pname);

	}

	@RequestMapping("/save_work_exper.action")
	public void save_work_exper(HttpServletRequest request, HttpServletResponse response) {
		String save_com_name = request.getParameter("save_com_name");
		String save_job_name = request.getParameter("save_job_name");
		String save_job_cotent = request.getParameter("save_job_cotent");

		System.out.println(save_com_name + "  " + save_job_name + "  " + save_job_cotent);

		userSession = (Personal_user) request.getSession().getAttribute("user");
		String pname = userSession.getPname();
		System.out.println("userSession:" + pname);

		service.updateWorkSelective(save_com_name, save_job_name, save_job_cotent, pname);

	}

}
