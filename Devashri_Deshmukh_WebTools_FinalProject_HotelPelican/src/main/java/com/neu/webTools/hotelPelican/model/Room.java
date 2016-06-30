package com.neu.webTools.hotelPelican.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;


@Entity
@Table(name = "ROOM")
public class Room  implements Serializable{
	
	@Id @GeneratedValue
	@Column (name="ROOMID",nullable=false)
	private int roomId;
	
	@Column (name="ROOMTYPE",nullable=false)
	private String roomType;
	
	@Column (name="CAPACITY",nullable=false)
	private int capacity;
	
	@Column (name="PRICE",nullable=false)
	private float pricePerDay;
	
	@Column(name="image")
	private String image;
	
	@Transient
	MultipartFile file;
	

	public int getRoomId() {
		return roomId;
	}
	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}
	
	
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public int getCapacity() {
		return capacity;
	}
	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	

	public float getPricePerDay() {
		return pricePerDay;
	}
	public void setPricePerDay(float pricePerDay) {
		this.pricePerDay = pricePerDay;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	
	
	
	
	

}

