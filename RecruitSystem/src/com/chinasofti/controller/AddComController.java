package com.chinasofti.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.model.Company_user;
import com.chinasofti.model.Job_info;
import com.chinasofti.service.CompanyUserService;

@Controller
public class AddComController {

	@Resource
	private CompanyUserService cservice;
	@Resource
	private Job_info job_info;
	@Resource
	private Company_user cuser;
	@Resource
	private ModelAndView mav;
	
	@RequestMapping("/addcom.action")
	public ModelAndView addCom(HttpServletRequest request, HttpServletResponse response, Model model){
		HttpSession session = request.getSession();
		cuser=(Company_user) session.getAttribute("cuser");
		if(null == cuser){
			return new ModelAndView("login");
		}
		String com_name = request.getParameter("com_name");
		Integer com_num= Integer.parseInt( request.getParameter("com_num"));
		String com_field= request.getParameter("com_field");
		String com_info= request.getParameter("com_info");
		String com_add= request.getParameter("com_add");
		cuser.setComName(com_name);
		cuser.setComField(com_field);
		cuser.setComNum(com_num);
		cuser.setComInfo(com_info);
		cuser.setComAdd(com_add);
		System.out.println(cuser);
		if (cservice.insert(cuser)!=0) {
			System.out.println(cuser);
			mav.addObject("cuser",cuser);
			mav.setViewName("cominfo");
		} else {
			mav.addObject("message","添加公司信息失败请重新尝试");
			mav.setViewName("addcominfo");
		}
		return mav;
	}
	
	@RequestMapping("/showcominfo.action")
	public ModelAndView showCominfo(HttpServletRequest request, HttpServletResponse response, Model model){
		HttpSession session = request.getSession();
		Company_user cuser= (Company_user) session.getAttribute("cuser");
		mav.setViewName("cominfo");
		return mav;
	}
	
	@RequestMapping("/showaddcompage.action")
	public ModelAndView showAddComPage(HttpServletRequest request, HttpServletResponse response, Model model){
		mav.setViewName("addcominfo");
		return mav;
	}
	
}
