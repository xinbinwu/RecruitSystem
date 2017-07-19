package com.chinasofti.controller;

import javax.annotation.Resource;

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

	@RequestMapping("/login.action")
	public String login(@ModelAttribute Personal_user puser, Model model) {
		puser = service.checkLogin(puser.getPname(), puser.getPpwd());
		if (null != puser) {
			model.addAttribute("puser", puser);
			return "index";
		}
		return "login";
	}
}
