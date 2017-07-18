package com.chinasofti.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.model.personal_user;
import com.chinasofti.service.PersonalUserService.PersonalUserService;

@Controller
public class LoginController {

	@Resource
	private PersonalUserService pus;
	@Resource
	private ModelAndView mav;
	@Resource
	private personal_user puser;

	@RequestMapping("/register.action")
	public ModelAndView register(HttpServletRequest request, HttpServletResponse response) {
		String username = request.getParameter("registerPhone");
		String password = request.getParameter("registerPassword");
		String cpassword = request.getParameter("registerRepassword");
		if (pus.selectByPname(username) == null && password.equals(cpassword)) {
			puser.setPname(username);
			puser.setPpwd(password);

			if (pus.insertSelective(puser) > 0) {
				System.out.println("注册成功！");
				mav.addObject("username", username);
				mav.addObject("password", username);
				mav.addObject("RegisterSuccessmessage", "Register Successfully,You can sign up now！");
				mav.setViewName("login");
				return mav;
			} else {
				System.out.println("注册失败！");
				mav.setViewName("register");
				mav.addObject("RegisteredFailedmessage",
						"Sorry,Registered Failed,Please Register Again！");
				return mav;
			}

		} else {
			System.out.println("注册失败！");
			mav.setViewName("register");
			mav.addObject("RegisteredFailedmessage", "Sorry,Registered Failed,Please Register Again！");
			return mav;
		}

	}

}
