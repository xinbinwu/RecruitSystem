package com.chinasofti.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.model.Company_user;
import com.chinasofti.model.Personal_user;
import com.chinasofti.service.CompanyUserService;
import com.chinasofti.service.PersonalUserService;
import com.chinasofti.serviceImpl.PersonalUserServiceImpl;

@Controller
public class ChangePasswordController {
	@Resource
	private PersonalUserService service;
	@Resource
	private Personal_user user;
	@Resource
	private ModelAndView mav;
	@Resource
	private Company_user cuser;
	@Resource
	private CompanyUserService cservice;

	@RequestMapping("/changeppassword.action")
	public ModelAndView changePassword(HttpServletRequest request, HttpServletResponse response, Model model) {

		String user = request.getParameter("pwdPhone");
		String pwd = request.getParameter("pwdNewPassword");
		String repwd = request.getParameter("pwdReNewpassword");
		String oldpwd = request.getParameter("pwdRPassword");
		String type = request.getParameter("type");
		System.out.println(user + " " + pwd + " " + repwd + " " + oldpwd);
		if ("个人".equals(type)) {
			if (pwd.equals(repwd)) {
				System.out.println(user + " if " + pwd + " " + repwd + " " + oldpwd);
				if (service.checkPassword(user, pwd, oldpwd)) {
					System.out.println(1);
					mav.addObject("message", "修改成功，请重新登录！");
					mav.setViewName("login");
					return mav;
				} else {
					System.out.println(2);
					mav.setViewName("changepassword");
					mav.addObject("message", "对不起，修改失败，请重新修改！");
					return mav;
				}
			} else {
				mav.setViewName("changepassword");
				mav.addObject("message", "对不起，修改失败，请重新修改！");
				return mav;
			}
		} else {
			if (pwd.equals(repwd)) {
				System.out.println(user + " if " + pwd + " " + repwd + " " + oldpwd);
				if (cservice.checkPassword(user, pwd, oldpwd)) {
					System.out.println(1);
					mav.setViewName("login");
					mav.addObject("message", "修改成功，请重新登录！");
					return mav;
				} else {
					System.out.println(2);
					mav.setViewName("changepassword");
					mav.addObject("message", "对不起，修改失败，请重新修改！");
					return mav;
				}
			} else {
				mav.setViewName("changepassword");
				mav.addObject("message", "对不起，修改失败，请重新修改！");
				return mav;
			}
		}

	}
}
