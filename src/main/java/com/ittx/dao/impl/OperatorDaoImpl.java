package com.ittx.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.stereotype.Repository;

import com.ittx.dao.intf.OperatorDao;
import com.ittx.model.Operator;
@Repository("operatorDao")
public class OperatorDaoImpl extends MyHibernateDaoSupport implements OperatorDao {
	//判断用户名和密码是否正确
	@Override
	public boolean getLogin(Operator operator) {
		return getHibernateTemplate().execute(new HibernateCallback<Boolean>() {

			@Override
			public Boolean doInHibernate(Session session) throws HibernateException {
				String hql = "FROM Operator WHERE username = ?  AND password = ?";
				Query query = session.createQuery(hql);
				query.setString(0, operator.getUsername());
				query.setString(1, operator.getPassword());
				Operator operator = (Operator) query.uniqueResult();
				if(operator != null){
					return true;
				}else{
					return false;
				}
			}
		});
	}
	
	//修改登陆次数和操作时间
	@Override
	public void updateCountDate(Operator operator) {
		getHibernateTemplate().update(operator);
	}

	@Override
	public Operator getOperator(int id) {
		List<Operator> list = (List<Operator>) getHibernateTemplate().find("FROM Operator WHERE id = ?", id);
		return list.get(0) ;
	}
}
