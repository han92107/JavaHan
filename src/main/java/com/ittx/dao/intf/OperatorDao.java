package com.ittx.dao.intf;

import com.ittx.model.Operator;

public interface OperatorDao {
	//判断账户是否正确
	public boolean getLogin(Operator operator);
	//修改登录次数和操作时间
	public void updateCountDate(Operator operator);
	
	public Operator getOperator(int id);
}
