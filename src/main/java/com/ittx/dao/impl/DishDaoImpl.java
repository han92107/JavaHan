package com.ittx.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ittx.dao.intf.DishDao;
import com.ittx.model.Dish;
import com.ittx.model.DishCategory;

@Repository("dishDaoImpl")
public class DishDaoImpl extends HibernateDaoSupport implements DishDao {
	
	//给HibernateDaoSupport注入sessionFactory
	@Resource(name="sessionFactory")
	public void zhuru(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}
	
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
