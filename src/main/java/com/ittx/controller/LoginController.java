package com.ittx.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ittx.model.Operator;
import com.ittx.service.intf.OperatorService;

@Controller
public class LoginController{
	@Autowired
	private Operator operator;
	@Autowired
	private OperatorService operatorService;
	//登录判断账户是否正确
	@RequestMapping(value="/logins")
	public ModelAndView loginAction(String username,String password,HttpServletRequest request){
		operator.setUsername(username);
		operator.setPassword(password);
		boolean flag = operatorService.getLogin(operator);
		ModelAndView modelAndView = new ModelAndView();
		if(flag){
			modelAndView.setViewName("redirect:/main");
			
			request.getSession().setAttribute("username", username);
		}else{
			request.setAttribute("message", "账户或密码错误！");
			modelAndView.setViewName("login");
		}
		return modelAndView;
	}
	//进入主界面
	@RequestMapping(value="/main")
	public ModelAndView loginMain(HttpServletRequest request){
		return new ModelAndView("main");
	}
	//退出登录并重定向到login界面
	@RequestMapping("/logOut")
	public ModelAndView logOut(HttpServletRequest request){
		request.getSession().setAttribute("username", null);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:/login");
		return modelAndView;
	}
	//进入login界面
	@RequestMapping("/login")
	public ModelAndView login(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("login");
		return modelAndView;
	}
}
