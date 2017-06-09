package com.ittx.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ittx.dao.intf.DishDao;
import com.ittx.model.Dish;
import com.ittx.model.DishCategory;

@Repository("dishDao")
public class DishDaoImpl extends MyHibernateDaoSupport implements DishDao {
	//增加菜品分类
	@Override
	public void add(DishCategory dishCategory) {
		getHibernateTemplate().save(dishCategory);
	}
	
	//查询所有菜品分类
	@Override
	public List<DishCategory> getDishcategory() {
		return (List<DishCategory>) getHibernateTemplate().find("FROM DishCategory");
	}
	
	//增加菜品
	@Override
	public void add(Dish dish) {
		getHibernateTemplate().save(dish);
	}
	
	//查询所有菜品
	@Override
	public List<Dish> getDish() {
		return (List<Dish>) getHibernateTemplate().find("FROM Dish");
	}
}
