package com.uunemo.beans;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="career")
public class Career {
	  
		private Integer careerId;
		private String careerName;
		
	   
		@Id
	    @GeneratedValue
	    @Column(name = "career_id",unique =true,nullable=false)
	    public Integer getCareerId() {
			return careerId;
		}

		public void setCareerId(Integer careerId) {
			this.careerId = careerId;
		}

		@Column(name="career_name" )
		public String getCareerName() {
			return careerName;
		}

		public void setCareerName(String careerName) {
			this.careerName = careerName;
		}

		
	    
	 

		
}
