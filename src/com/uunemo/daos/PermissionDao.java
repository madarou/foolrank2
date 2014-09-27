package com.uunemo.daos;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.uunemo.beans.Permission;


@Repository(value="PermissionDao")
public class PermissionDao {

	final java.lang.String QUERYNAME = "from Permission as permission where permission.permissionName =?";

	@Resource
	private HibernateTemplate hibernateTemplate;

	public void save(String permission) {
		hibernateTemplate.save(permission);
	}

	public Permission getPermissionByName(String permissionName) {

		return (Permission) hibernateTemplate.find(QUERYNAME, permissionName)
				.get(0);

	}
}
