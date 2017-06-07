package com.ittx.service.impl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ittx.dao.impl.DishDaoImpl;
import com.ittx.dao.intf.DishDao;
import com.ittx.model.Dish;
import com.ittx.service.intf.DishService;
@Transactional
@Service("dishService")
public class DishServiceImpl implements DishService{
	@Autowired
	private DishDao dishDao;
	@Override
	public void add(Dish dish) {
		dishDao.add(dish);
	}

	@Override
	public List<Dish> getDish() {
		return dishDao.getDish();
	}

}
