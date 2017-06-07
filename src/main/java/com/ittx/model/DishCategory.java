package com.ittx.model;

import java.util.Set;

public class DishCategory {
	private int id;
	private String name;
	private Set<Dish> dishs;
	
	
	@Override
	public String toString() {
		return "DishCategory [id=" + id + ", name=" + name + "]";
	}

	public DishCategory() {
	}
	
	public DishCategory(String name, Set<Dish> dishs) {
		super();
		this.name = name;
		this.dishs = dishs;
	}

	public DishCategory(int id, String name, Set<Dish> dishs) {
		super();
		this.id = id;
		this.name = name;
		this.dishs = dishs;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Set<Dish> getDishs() {
		return dishs;
	}
	public void setDishs(Set<Dish> dishs) {
		this.dishs = dishs;
	}
	
}
