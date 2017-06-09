package com.ittx.service.intf;


import java.util.List;

import com.ittx.model.Dish;
import com.ittx.model.DishCategory;
public interface DishService {
	//增加菜品分类
	public void add(DishCategory dishCategory);
	//查询所有菜品分类
	public List<DishCategory> getDishcategory();
	//增加菜品
	public void add(Dish dish);
	//查询所有菜品
	public List<Dish> getDish();
}
