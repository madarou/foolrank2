package com.uunemo.beans;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import com.uunemo.beans.Permission;

/**
 * Model object that represents a security role.
 */
@Entity
@Table(name="role")
public class Role {
	
    private int roleId;
    private String roleName;
	private Set<Permission> permissions = new HashSet<Permission>();
	

	@Id
	@GeneratedValue
	@Column(name="role_id",length=8,nullable=false)
    public int getId() {
        return roleId;
    }

	
    public void setId(int role_id) {
        this.roleId = role_id;
    }

    @Column(name="role_name",unique=true,length=20)
    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String role_name) {
        this.roleName = role_name;
    }
    
    
	@ManyToMany(targetEntity = com.uunemo.beans.Permission.class, cascade = {
			CascadeType.PERSIST, CascadeType.MERGE },
			fetch=FetchType.EAGER)
	@JoinTable(name = "role_permission", 
			joinColumns = @JoinColumn(name = "role_id"), 
			inverseJoinColumns = @JoinColumn(name = "permission_id"))
	public Set<Permission> getPermissions() {
		return permissions;
	}

	public void setPermissions(Set<Permission> permissions) {
		this.permissions = permissions;
	}

  
}