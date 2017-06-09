package com.ittx.model;

import java.util.Date;

import org.springframework.stereotype.Component;
@Component
public class Operator {
	private int id;
	private String username;
	private String password;
	private String operateTime;
	private int loginCount;
	
	public Operator() {
	}
	
	public Operator(String username, String password, String operateTime, int loginCount) {
		this.username = username;
		this.password = password;
		this.operateTime = operateTime;
		this.loginCount = loginCount;
	}
	
	public Operator(int id, String username, String password, String operateTime, int loginCount) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.operateTime = operateTime;
		this.loginCount = loginCount;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getOperateTime() {
		return operateTime;
	}
	public void setOperateTime(String operateTime) {
		this.operateTime = operateTime;
	}
	public int getLoginCount() {
		return loginCount;
	}
	public void setLoginCount(int loginCount) {
		this.loginCount = loginCount;
	}
	
}
