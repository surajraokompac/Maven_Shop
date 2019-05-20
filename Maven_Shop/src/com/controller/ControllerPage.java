package com.controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.ui.ModelMap;

import com.dao.loginValidate;
import com.dao.registerDao;
import com.domin.login;
import com.domin.payment;
import com.domin.register;

@Controller
public class ControllerPage {
@Autowired
loginValidate loginValidate;
@Autowired
registerDao registerDao;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginPage() {
		System.out.println("loginpage");
		return new ModelAndView("login", "login", new login());
		
	}
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView registerPage() {
		System.out.println("registerpage");
		return new ModelAndView("register", "register", new register());
		
	}
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String indexPage() {
		System.out.println("indexpage");
		return "index";
		
	}
	@RequestMapping(value = "/login_check", method = RequestMethod.POST)
	public String login(@ModelAttribute("login")login login, ModelMap map) {
		System.out.println("login_check");
		String check=loginValidate.loginValidate(login);
		
		return "index";
		
	}
	@RequestMapping(value = "/registerEmp", method = RequestMethod.POST)
	public String register(@ModelAttribute("register")register register, ModelMap map) {
		System.out.println("registerEmp");
		String regis=registerDao.registerEmp(register);
		
		return "index";
		
	}
}
