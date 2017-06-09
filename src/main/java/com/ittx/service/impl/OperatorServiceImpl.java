package com.ittx.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ittx.dao.intf.OperatorDao;
import com.ittx.model.Operator;
import com.ittx.service.intf.OperatorService;
@Service("operatorService")
public class OperatorServiceImpl implements OperatorService {
	@Autowired
	private OperatorDao operatorDao;
	@Override
	public boolean getLogin(Operator operator) {
		return operatorDao.getLogin(operator);
	}
	//修改登录次数和操作时间
	@Override
	public void updateCountDate(Operator operator) {
		operatorDao.updateCountDate(operator);
	}
	@Override
	public Operator getOperator(int id) {
		return operatorDao.getOperator(id);
	}

}
