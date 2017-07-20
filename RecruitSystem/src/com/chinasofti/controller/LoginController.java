package com.chinasofti.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.model.Company_user;
import com.chinasofti.model.Personal_user;
import com.chinasofti.service.CompanyUserService;
import com.chinasofti.service.PersonalUserService;
import com.chinasofti.serviceImpl.PersonalUserServiceImpl;

@Controller
public class LoginController {
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

	@RequestMapping("/login.action")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) {
		String username = request.getParameter("puser");
		String password = request.getParameter("ppw");
		String type = request.getParameter("type");
		String remember = request.getParameter("remember");
		if ("个人".equals(type)) {
			user = service.checkLogin(username, password);

			if (null != user) {
				mav.addObject("username", username);
				mav.addObject("password", password);
				mav.setViewName("index");
				return mav;
			} else {
				mav.setViewName("login");
				mav.addObject("LoginFailedMessage", "对不起，登录失败，请重新登录！");
				return mav;
			}
		} else if ("企业".equals(type)) {
			cuser = cservice.selectByPname(username);
			if (cuser != null && password.equals(cuser.getCpwd())) {
				mav.addObject("username", username);
				mav.addObject("password", password);
				mav.setViewName("index");
				return mav;
			} else {
				mav.setViewName("login");
				mav.addObject("LoginFailedMessage", "对不起，登录失败，请重新登录！");
				return mav;
			}

		} else {
			mav.setViewName("login");
			mav.addObject("LoginFailedMessage", "对不起，登录失败，请重新登录！");
			return mav;
		}
	}
}
