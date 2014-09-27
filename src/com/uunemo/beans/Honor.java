package com.uunemo.beans;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="honor")
public class Honor {
	  
		private Integer honorId;
		private String honorName;
		
	   
		@Id
	    @GeneratedValue
	    @Column(name = "honor_id",unique =true,nullable=false)
	    public Integer getHonorId() {
			return honorId;
		}

		public void setHonorId(Integer honorId) {
			this.honorId = honorId;
		}

		@Column(name="honor_name" )
		public String getHonorName() {
			return honorName;
		}

		public void setHonorName(String honorName) {
			this.honorName = honorName;
		}

		
	    
	 

		
}
