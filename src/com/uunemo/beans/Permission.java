package com.uunemo.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "permission")
public class Permission {

	private int permissionId;
	private String permissionName;
	
	@Id
	@GeneratedValue
	@Column(name="permission_id",length=8,unique=true)
	public int getId() {
		return permissionId;
	}

	public void setId(int id) {
		this.permissionId = id;
	}

	@Column(name="permission_name",unique=true,length=20,nullable=false)
	public String getPermissionName() {
		return permissionName;
	}

	public void setPermissionName(String permissionName) {
		this.permissionName = permissionName;
	}

	
	
	
	
}
