package com.ittx.dao.impl;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

public class MyHibernateDaoSupport extends HibernateDaoSupport{
	//给HibernateDaoSupport注入sessionFactory
	@Resource(name="sessionFactory")
	public void setSessionFactorys(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}
}
