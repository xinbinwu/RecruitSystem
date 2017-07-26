package com.chinasofti.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.chinasofti.dao.Company_userMapper;
import com.chinasofti.model.Company_user;
import com.chinasofti.model.Personal_user;
import com.chinasofti.service.CompanyUserService;
import com.chinasofti.service.PersonalUserService;

@Controller
public class RegisterController {

	@Resource
	private PersonalUserService pus;
	@Resource
	private ModelAndView mav;
	@Resource
	private Personal_user puser;
	@Resource
	private Company_user cuser;
	@Resource
	private CompanyUserService cService;
	@Resource
	private JSONObject jSONObject;
	@Resource
	private JSONArray jSONArray;

	@RequestMapping("/register.action")
	public ModelAndView register(HttpServletRequest request, HttpServletResponse response) {
		String username = request.getParameter("registerPhone");
		String password = request.getParameter("registerPassword");
		String cpassword = request.getParameter("registerRepassword");
		String type = request.getParameter("type");
		if ("个人".equals(type)) {

			if (pus.selectByPname(username) == null && password.equals(cpassword)) {
				puser.setPname(username);
				puser.setPpwd(password);

				if (pus.insertSelectiveRegister(puser) > 0) {
					System.out.println("注册成功！");
					mav.addObject("username", username);
					mav.addObject("password", username);
					mav.addObject("RegisterSuccessmessage", "注册成功，现在可以登录啦！");
					mav.setViewName("login");
					return mav;
				} else {
					System.out.println("注册失败！");
					mav.setViewName("register");
					mav.addObject("RegisteredFailedmessage", "对不起，注册失败，请重新注册！");
					return mav;
				}

			} else {
				System.out.println("注册失败！");
				mav.setViewName("register");
				mav.addObject("RegisteredFailedmessage", "对不起，注册失败，请重新注册！");
				return mav;
			}
		} else if ("企业".equals(type)) {
			if (cService.selectByPname(username) == null && password.equals(cpassword)) {
				cuser.setCname(username);
				cuser.setCpwd(password);

				if (cService.insertSelective(cuser) > 0) {
					System.out.println("注册成功！");
					mav.addObject("username", username);
					mav.addObject("password", username);
					mav.addObject("RegisterSuccessmessage", "注册成功，现在可以登录啦！");
					mav.setViewName("login");
					return mav;
				} else {
					System.out.println("注册失败！");
					mav.setViewName("register");
					mav.addObject("RegisteredFailedmessage", "对不起，注册失败，请重新注册！");
					return mav;
				}

			} else {
				System.out.println("注册失败！");
				mav.setViewName("register");
				mav.addObject("RegisteredFailedmessage", "对不起，注册失败，请重新注册！");
				return mav;
			}

		} else {
			System.out.println("注册失败！");
			mav.setViewName("register");
			mav.addObject("RegisteredFailedmessage", "对不起，注册失败，请重新注册！");
			return mav;
		}

	}

	@RequestMapping("/registerPhone.action")
	public void registerPhone(HttpServletRequest request, HttpServletResponse response)
			throws JSONException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String phone = request.getParameter("registerPhone");
		System.out.println(phone);
		Personal_user selectByPname = pus.selectByPname(phone);
		System.out.println(selectByPname);
		String message = null;
		if (selectByPname != null) {
			message = "对不起，该用户已注册！";

		} else {
			if (phone.length() == 11) {
				message = "恭喜你，该手机号可以注册！";
			}else {
				message = "请输入正确的手机格式！";
			}

		}
		jSONObject.put("registerMessage", message);
		jSONArray.add(jSONObject);
		PrintWriter out = response.getWriter();
		out.println(jSONArray);
		out.close();

	}
}
