package com.ittx.Test;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ittx.dao.impl.DishDaoImpl;
import com.ittx.dao.impl.OperatorDaoImpl;
import com.ittx.dao.intf.DishDao;
import com.ittx.dao.intf.OperatorDao;
import com.ittx.model.Dish;
import com.ittx.model.DishCategory;
import com.ittx.model.Operator;
import com.ittx.service.intf.OperatorService;

public class test {
	ApplicationContext context;
	@Before
	public void bef(){
		context = new ClassPathXmlApplicationContext(new String[]{"spring-core.xml"});
	}
	@Test
	public void test() {
		OperatorService operatorService = (OperatorService) context.getBean("operatorService");
		Operator operator = new Operator();
		operator.setId(1);
		operator.setLoginCount(operator.getLoginCount() + 1);
//		operator.setOperateTime(new SimpleDateFormat("YYYY-mm-dd hh:mm:ss").format(new Date().getTime()));
		 operatorService.updateCountDate(operator);
		System.out.println(operatorService.getOperator(1).getLoginCount());

		System.out.println(operatorService.getOperator(1).getOperateTime());
	}

}
