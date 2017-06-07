package com.ittx.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ittx.model.Operator;
import com.ittx.service.intf.DishService;
import com.ittx.service.intf.OperatorService;

@Controller
public class LoginAction{
	@Autowired
	private OperatorService operatorService;
	
	@RequestMapping(value="/logins",method=RequestMethod.POST)
	public void loginAction(String username,String password){
		Operator operator = new Operator();
		operator.setUsername(username);
		operator.setPassword(password);
		boolean flag = operatorService.getLogin(operator);
		System.out.println(flag);
	}
}
