package com.ittx.service.impl;

import org.springframework.stereotype.Service;

import com.ittx.dao.intf.OperatorDao;
import com.ittx.model.Operator;
import com.ittx.service.intf.OperatorService;
@Service("operatorService")
public class OperatorServiceImpl implements OperatorService {
	private OperatorDao operatorDao;
	@Override
	public boolean getLogin(Operator operator) {
		System.out.println(operator);
		return operatorDao.getLogin(operator);
	}

}
