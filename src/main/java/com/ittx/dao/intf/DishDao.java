package com.ittx.dao.intf;

import java.util.List;

import com.ittx.model.Dish;
import com.ittx.model.DishCategory;

public interface DishDao {
	public void add(DishCategory dishCategory);
	public List<DishCategory> getDishcategory();
	
	public void add(Dish dish);
	public List<Dish> getDish();
}
