package com.ittx.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ittx.service.intf.DishService;

@Controller
public class LoginAction{
	@Autowired
	private DishService dishService;
	
	@RequestMapping(value="/logins",method=RequestMethod.POST)
	public void loginAction(String username,String password){
		System.out.println(username+"sssssssss"+password);
	}
}
