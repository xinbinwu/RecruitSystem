package com.chinasofti.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chinasofti.model.Personal_user;
import com.chinasofti.service.PersonalUserService;
import com.chinasofti.serviceImpl.PersonalUserServiceImpl;

@Controller
public class LoginController {
	@Resource
	private PersonalUserService service;
	private Personal_user user;

	@RequestMapping("/login.action")
	public String login(HttpServletRequest request, HttpServletResponse response,Model model) {
		String puser= request.getParameter("puser");
		String ppw=request.getParameter("ppw");
		System.out.println(puser+"   "+ ppw);
		user = service.checkLogin(puser, ppw);
		
		if (null != user) {
			model.addAttribute("puser", user);
			return "index";
		}
		return "login";
	}
}
