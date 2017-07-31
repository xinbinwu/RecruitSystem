package com.chinasofti.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.chinasofti.model.Company_user;
import com.chinasofti.model.Deliver;
import com.chinasofti.service.DeliverService;
import com.chinasofti.service.PersonalUserService;

@Controller
public class ShowResumeController {
	@Resource
	private PersonalUserService service;
	
	@Resource
	private Company_user cuser;
	
	@Resource
	private DeliverService dservice;

	@Resource
	private ModelAndView mav;
	
	@RequestMapping("/manageResume.action")
	public ModelAndView showAllResume(HttpServletRequest request, HttpServletResponse response, Model model){
		HttpSession session = request.getSession();
		cuser= (Company_user) session.getAttribute("cuser");
		List<Deliver>  list;
		list=dservice.selectAllDeliverByCuserId(cuser.getCuserId());
		if (!list.isEmpty()) {
			mav.addObject("list",list);
			mav.setViewName("showappinfo");
		} else {
			mav.addObject("message","暂时没有人应聘");
			mav.setViewName("showappinfo");
		}
		return mav;
	}
}
