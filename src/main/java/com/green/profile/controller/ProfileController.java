package com.green.profile.controller;


import javax.servlet.jsp.PageContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProfileController {

	@RequestMapping("/profile")
	public ModelAndView profile() {

		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("img", "/img/profile.jpg");
		mv.setViewName("profile");


		return mv;
	}

}
