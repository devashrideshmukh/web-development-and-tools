package com.neu.webTools.hotelPelican.model;



import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "USER")
public class User  implements Serializable{
	
	@Id @GeneratedValue
	@Column (name="USERID",nullable=false)
	private int userId;
	
	@Column (name="USERNAME",nullable=false)
	private String username;
	
	@Column(name="NAME",nullable=false)
	private String name;
	
	@Column (name="PASSWORD",nullable=false)
	private String password;
	
	@Transient
	private String confirmPassword;
	
	@ManyToOne
	@JoinColumn(name="roleId")
	private Role role;
	
	public String getConfirmPassword() {
		return confirmPassword;
	}
	
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}
	
	@Column (name="COUNTRY")
	private String country;
	
	@Column (name="STATE")
	private String state;
	
	@Column (name="CITY")
	private String city;
	
	@Column (name="POSTALCODE")
	private Integer postalCode;
	
	@Column (name="EMAILID")
	private String emailId;
	
	@Column(name="MOBILENUM")
	private String phoneNumber;
	
	@Column (name="QUESTION")
	private String customerSequrityquestion;
	
	@Column (name="ANSWER")
	private String customerAnswer;
	
	@Column (name="POINTS")
	private int loyaltyPoints;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public Integer getPostalCode() {
		return postalCode;
	}
	public void setPostalCode(Integer postalCode) {
		this.postalCode = postalCode;
	}
	
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getCustomerSequrityquestion() {
		return customerSequrityquestion;
	}
	public void setCustomerSequrityquestion(String customerSequrityquestion) {
		this.customerSequrityquestion = customerSequrityquestion;
	}
	public String getCustomerAnswer() {
		return customerAnswer;
	}
	public void setCustomerAnswer(String customerAnswer) {
		this.customerAnswer = customerAnswer;
	}
	public int getLoyaltyPoints() {
		return loyaltyPoints;
	}
	public void setLoyaltyPoints(int loyaltyPoints) {
		this.loyaltyPoints = loyaltyPoints;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return username;
	}
	public void setUserName(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
