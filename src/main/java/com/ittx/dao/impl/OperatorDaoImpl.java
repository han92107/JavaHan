package com.ittx.dao.impl;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.stereotype.Repository;

import com.ittx.dao.intf.OperatorDao;
import com.ittx.model.Operator;
@Repository("operatorDao")
public class OperatorDaoImpl extends MyHibernateDaoSupport implements OperatorDao {
	
	@Override
	public boolean getLogin(Operator operator) {
		return getHibernateTemplate().execute(new HibernateCallback<Boolean>() {

			@Override
			public Boolean doInHibernate(Session session) throws HibernateException {
				String hql = "FROM Operator WHERE username = ? AND password = ?";
//				session.createQuery(hql).setString(0, operator.getUsername()).setString(1, operator.getPassword());
				Query query = session.createQuery(hql);
				query.setParameter(0, operator.getUsername());
				query.setParameter(1, operator.getPassword());
				boolean flag = (boolean) query.uniqueResult();
				System.out.println("boolean"+flag);
				return flag;
//				if(flag == null || ("").equals(flag)){
//					return false;
//				}else{
//					return true;
//				}
			}
		});
	}

}
