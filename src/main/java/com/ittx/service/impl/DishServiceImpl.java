package com.ittx.service.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ittx.dao.impl.DishDaoImpl;
import com.ittx.model.Dish;
import com.ittx.service.intf.DishService;
@Transactional
@Service("dishServiceImpl")
public class DishServiceImpl implements DishService{
	@Autowired
	private DishDaoImpl dishDaoImpl;
	@Override
	public void add(Dish dish) {
		dishDaoImpl.add(dish);
	}

	@Override
	public List<Dish> getDish() {
		return dishDaoImpl.getDish();
	}

}
