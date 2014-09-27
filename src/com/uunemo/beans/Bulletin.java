package com.uunemo.beans;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="bulletin")
public class Bulletin {
	    @Id
	    @GeneratedValue
	    @Column(name = "bulletin_id",unique =true,nullable=false)
		private Integer bulletin_id;
	    
	    @Column(name="bulletin_date" )
		private Date bulletin_date;
	    
	    @Column(name="description", length=1000)
		private String description;


	  
		public Integer getBulletin_id() {
			return bulletin_id;
		}

		public void setBulletin_id(Integer bulletin_id) {
			this.bulletin_id = bulletin_id;
		}

		public Date getBulletin_date() {
			return bulletin_date;
		}

		public void setBulletin_date(Date bulletin_date) {
			this.bulletin_date = bulletin_date;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}

		
}
