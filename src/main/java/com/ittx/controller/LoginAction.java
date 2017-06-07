package com.ittx.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ittx.service.impl.DishServiceImpl;

@Controller()
@RequestMapping("/Controller")
public class LoginAction{
	@Autowired
	private DishServiceImpl dishServiceImpl;
	@PostMapping("/login")
	public String loginAction(String username,String password){
		System.out.println(username+"   "+password);
		return "";
	}
}
