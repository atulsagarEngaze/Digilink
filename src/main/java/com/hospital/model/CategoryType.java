package com.hospital.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="category_type")
public class CategoryType implements Serializable{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long categoryId ;
	
	@Column
	private String category;
	
	@Column
	private String sub_category;

	public CategoryType() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CategoryType(String category, String sub_category) {
		super();
		this.category = category;
		this.sub_category = sub_category;
	}

	public long getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(long categoryId) {
		this.categoryId = categoryId;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getSub_category() {
		return sub_category;
	}

	public void setSub_category(String sub_category) {
		this.sub_category = sub_category;
	}

	@Override
	public String toString() {
		return "CategoryType [categoryId=" + categoryId + ", category=" + category + ", sub_category=" + sub_category
				+ "]";
	}
	
	

}
