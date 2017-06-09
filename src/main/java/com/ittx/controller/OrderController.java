package com.ittx.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ittx.model.DishCategory;
import com.ittx.service.intf.DishService;

@Controller
public class OrderController {
	@Autowired
	private DishService dishService;
	//进入餐桌界面
	@RequestMapping("/tableSetting")
	public ModelAndView setTable(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("tableSetting");
		return modelAndView;
	}
	//进入餐桌结账界面
	@RequestMapping("/settle")
	public ModelAndView settleAccounts(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("settleRequest");
		return modelAndView;
	}
	//结账
	@RequestMapping("/settle2")
	public ModelAndView settleLast(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("settleRequest2");
		return modelAndView;
	}
	//确认金额结账
	@RequestMapping("/settle3")
	public ModelAndView okSettle(){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("settleRequest3");
		return modelAndView;
	}
	//进入菜谱设置
	@RequestMapping("/dish")
	public ModelAndView dishSet(HttpServletRequest request){
		ModelAndView modelAndView = new ModelAndView();
		List<DishCategory> dishCategories = dishService.getDishcategory();
		modelAndView.getModel().put("dishCategory", dishCategories);
		modelAndView.setViewName("dishSet");
		return modelAndView;
	}
	//添加菜品
	@RequestMapping("/addDish")
	public ModelAndView addDish(){
		ModelAndView modelAndView = new ModelAndView();
		List<DishCategory> dishCategories = dishService.getDishcategory();
		modelAndView.getModel().put("dishCategory", dishCategories);
		modelAndView.setViewName("addDish");
		return modelAndView;
	}
	//获取被添加菜品的信息
	@RequestMapping("/saveDish")
	public void saveDish(String name,HttpServletRequest request){
		System.out.println("菜名"+name+"		"+request.getParameter("name"));
	}
}
