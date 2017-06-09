package com.ittx.service.intf;

import com.ittx.model.Operator;

public interface OperatorService {
	public boolean getLogin(Operator operator);
	
	//修改登录次数和操作时间
	public void updateCountDate(Operator operator);
	
	public Operator getOperator(int id);
}
