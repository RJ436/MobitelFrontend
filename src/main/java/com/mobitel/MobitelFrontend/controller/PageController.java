package com.mobitel.MobitelFrontend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

	@RequestMapping("/AboutUs")
	public String showAboutUsPage()
	{
		return "AboutUs";
	}
	
	@RequestMapping("/login")
	public String showLoginPage()
	{
		return "Login";
	}
	
	@RequestMapping("/UserHome")
	public String showUserHomePage()
	{
		return "UserHome";
	}
	
	@RequestMapping("/Home")
	public String showHomePage()
	{
		return "Home";
	}
	
	@RequestMapping("/OnePlus")
	public String showOnePlusPage()
	{
		return "OnePlus";
	}
	
	@RequestMapping("/Apple")
	public String showApplePage()
	{
		return "Apple";
	}
	
	@RequestMapping("/Mi")
	public String showMiPage()
	{
		return "Mi";
	}
	
	
}