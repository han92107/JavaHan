package com.ittx.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.ittx.dao.intf.DishDao;
import com.ittx.model.Dish;
import com.ittx.model.DishCategory;

@Repository("dishDao")
public class DishDaoImpl extends MyHibernateDaoSupport implements DishDao {
	
	@Override
	public void add(DishCategory dishCategory) {
		getHibernateTemplate().save(dishCategory);
	}

	@Override
	public List<DishCategory> getDishcategory() {
		return (List<DishCategory>) getHibernateTemplate().find("FROM DishCategory");
	}

	@Override
	public void add(Dish dish) {
		getHibernateTemplate().save(dish);
	}

	@Override
	public List<Dish> getDish() {
		return (List<Dish>) getHibernateTemplate().find("FROM Dish");
	}
}
