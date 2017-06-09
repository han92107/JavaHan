package com.ittx.service.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ittx.dao.impl.DishDaoImpl;
import com.ittx.dao.intf.DishDao;
import com.ittx.model.Dish;
import com.ittx.model.DishCategory;
import com.ittx.service.intf.DishService;
@Transactional
@Service("dishService")
public class DishServiceImpl implements DishService{
	@Autowired
	private DishDao dishDao;
	//增加菜品
	@Override
	public void add(Dish dish) {
		dishDao.add(dish);
	}
	//查询所有菜品
	@Override
	public List<Dish> getDish() {
		return dishDao.getDish();
	}
	//增加菜品分类
	@Override
	public void add(DishCategory dishCategory) {
		dishDao.add(dishCategory);
	}
	//查询所有菜品分类
	@Override
	public List<DishCategory> getDishcategory() {
		return dishDao.getDishcategory();
	}

}
