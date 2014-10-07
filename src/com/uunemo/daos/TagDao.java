package com.uunemo.daos;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.uunemo.beans.Tag;

@Repository(value="TagDao")
public class TagDao {
	@Resource
	private HibernateTemplate hibernateTemplate;
	
	private static final Logger log = LoggerFactory.getLogger(TagDao.class);

	public void save(Tag tag) {
		hibernateTemplate.saveOrUpdate(tag);
	}	
	
	public Tag getTagByName(String name){
		String hql = "from Tag as tag where tag.tagName = ?";
		List<Tag> tags = null;
		try {
			tags = hibernateTemplate.find(hql,name);
			log.debug("get tag successful");
		} catch (RuntimeException re) {
			log.error("get tag failed", re);
			throw re;
		}
		if(tags.size()!=0){
			return tags.get(0);
		}else{
			return null;
		}
	}
}
