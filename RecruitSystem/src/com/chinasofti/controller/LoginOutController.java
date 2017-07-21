package com.chinasofti.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginOutController {
	@Resource
	private ModelAndView mav;

	@RequestMapping("/logout.action")
	public ModelAndView register(HttpServletRequest request, HttpServletResponse response) {
		/*
		 * 实现退出登陆效果，在销毁回话对象的同时返回到登陆页面
		 */
		// 1.获得对应的session对象
		HttpSession session = request.getSession();
		// 2.销毁session对象
		session.invalidate();
		// 3.返回登录页

		mav.setViewName("index");
		return mav;

	}

}
