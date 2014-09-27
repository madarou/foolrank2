package com.uunemo.daos;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.uunemo.beans.Role;;

@Repository(value="RoleDao")
@Transactional(propagation=Propagation.REQUIRED,rollbackFor=Exception.class)

public class RoleDao {
	@Resource
	private HibernateTemplate hibernateTemplate;
	

	public void save(Role role) {
		hibernateTemplate.saveOrUpdate(role);
        //throw new RuntimeException();  // for roll back
	}	
	
	public Role getRoleByName(String rolename){
		String queryString = "from Role as role where role.roleName = ?";
		return (Role)hibernateTemplate.find(queryString,rolename).get(0);
	}
}
