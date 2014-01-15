package com.style.www.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.codehaus.jackson.annotate.JsonIgnore;


@Entity
public class Product implements Serializable{
	private static final long serialVersionUID = 5392293464298767249L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long id;
	private String name;
	private Integer price;
	private String description;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date registTime;
	@Temporal(TemporalType.TIMESTAMP)
	private Date updatedTime;
	
	@ManyToOne(fetch=FetchType.LAZY)
	private Category category;
	
	@JsonIgnore
	@OneToMany(mappedBy = "product", targetEntity = Size.class, cascade = CascadeType.ALL, fetch = FetchType.LAZY, orphanRemoval = true)
	private List<Size> sizeList = new ArrayList<Size>();
	
	@JsonIgnore
	@OneToMany(mappedBy = "product", targetEntity = Image.class, cascade = CascadeType.ALL, fetch = FetchType.LAZY, orphanRemoval = true)
	private List<Image> imageList = new ArrayList<Image>();
	
	public Product() {}

	public Product(String name, String description, int price, Category category) {
		this.name = name;
		this.description = description;
		this.price = price;
		this.category = category;
	}
	@PrePersist
	protected void onCreate() {
		updatedTime = registTime = new Date();
	}
	@PreUpdate
	protected void onUpdate() {
		updatedTime = new Date();
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Date getRegistTime() {
		return registTime;
	}
	public void setRegistTime(Date registTime) {
		this.registTime = registTime;
	}
	public Date getUpdatedTime() {
		return updatedTime;
	}
	public void setUpdatedTime(Date updatedTime) {
		this.updatedTime = updatedTime;
	}
	public List<Size> getSizeList() {
		return sizeList;
	}
	public List<Image> getImageList() {
		return imageList;
	}
}
