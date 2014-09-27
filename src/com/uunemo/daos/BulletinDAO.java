package com.uunemo.daos;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.uunemo.beans.Bulletin;

@Repository(value = "BulletinDAO")
public class BulletinDAO {
	@Resource
	private HibernateTemplate hibernateTemplate;
	private String queryLatest = "from Bulletin";

	protected void initDao() {
		// do nothing
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	public void save(Bulletin transientInstance) {

		try {
			getHibernateTemplate().save(transientInstance);

		} catch (RuntimeException re) {

			throw re;
		}
	}

	public Bulletin getLatestBulletin() {
		List<Bulletin> listBulletin = getHibernateTemplate().find(
				this.queryLatest);

		if (listBulletin.size() != 0) {
			return listBulletin.get(0);
		} else {
			return null;
		}

	}

}
