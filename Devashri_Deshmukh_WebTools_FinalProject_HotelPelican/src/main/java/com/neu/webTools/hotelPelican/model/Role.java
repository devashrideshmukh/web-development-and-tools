package com.neu.webTools.hotelPelican.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ROLE")
public class Role  implements Serializable{
	
	@Column(name="ROLENAME")
	private String roleName;
	
	@Id
	@Column (name="ROLEID",nullable=false)
	private int roleId;
	
	
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	
	

}
