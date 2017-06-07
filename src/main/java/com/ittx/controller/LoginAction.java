package com.ittx.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ittx.service.impl.DishServiceImpl;

@Controller
public class LoginAction{
	@Autowired
	private DishServiceImpl dishServiceImpl;
	
	@RequestMapping(value="/logins",method=RequestMethod.POST)
	public void loginAction(){
		System.out.println("sssssssss");
	}
}
