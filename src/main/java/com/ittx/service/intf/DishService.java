package com.ittx.service.intf;


import java.util.List;

import com.ittx.model.Dish;
public interface DishService {
	public void add(Dish dish);
	public List<Dish> getDish();
}
