package com.ittx.Test;


import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ittx.dao.impl.DishDaoImpl;
import com.ittx.dao.intf.DishDao;
import com.ittx.model.Dish;
import com.ittx.model.DishCategory;

public class test {
	ApplicationContext context;
	@Before
	public void bef(){
		context = new ClassPathXmlApplicationContext(new String[]{"spring-core.xml"});
	}
	@Test
	public void test() {
		DishDao dishDao = (DishDao) context.getBean("DishDaoImpl");
//		DishCategory dishCategory = new DishCategory();
//		dishCategory.setName("假菜");
//		dishDao.add(dishCategory);
		
//		List<DishCategory> list = dishDao.getDishcategory();
//		for (DishCategory dishCategory : list) {
//			System.out.println(dishCategory);
//		}
//		DishCategory dishCategory = new DishCategory();
//		dishCategory.setId(1);
		List<Dish> list = dishDao.getDish();
		List<DishCategory> list2 = dishDao.getDishcategory();
		for (Dish dish : list) {
			for (DishCategory dishCategory : list2) {
				
				System.out.println(dish.getName()+dishCategory.getName());
			}
		}
	}

}
