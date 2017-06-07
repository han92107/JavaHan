package com.ittx.model;

import java.util.Date;

public class Dish {
	private int id;//菜品ID
	private String name;//菜名
	private double price;//价格
	private int putaway;//是否上架
	private int specialty;//是否是特色菜
	private String picturePath;//图片路径
	private String material;//菜品原料
	private String description;//菜品描述
	private Date createDate;//创建日期
	private DishCategory dishCategory;//菜品分类
	
	public Dish() {
	}
	public Dish(int id, String name, double price, int putaway, int specialty, String picturePath,
			String material, String description, Date createDate, DishCategory dishCategory) {
		this.id = id;
		this.name = name;
		this.price = price;
		this.putaway = putaway;
		this.specialty = specialty;
		this.picturePath = picturePath;
		this.material = material;
		this.description = description;
		this.createDate = createDate;
		this.dishCategory = dishCategory;
	}
	public Dish(String name, double price, int putaway, int specialty, String picturePath, String material,
			String description, Date createDate, DishCategory dishCategory) {
		this.name = name;
		this.price = price;
		this.putaway = putaway;
		this.specialty = specialty;
		this.picturePath = picturePath;
		this.material = material;
		this.description = description;
		this.createDate = createDate;
		this.dishCategory = dishCategory;
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
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getPutaway() {
		return putaway;
	}
	public void setPutaway(int putaway) {
		this.putaway = putaway;
	}
	public int getSpecialty() {
		return specialty;
	}
	public void setSpecialty(int specialty) {
		this.specialty = specialty;
	}
	public String getPicturePath() {
		return picturePath;
	}
	public void setPicturePath(String picturePath) {
		this.picturePath = picturePath;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public DishCategory getDishCategory() {
		return dishCategory;
	}
	public void setDishCategory(DishCategory dishCategory) {
		this.dishCategory = dishCategory;
	}
	
	
}
