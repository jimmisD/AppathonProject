package com.example.eHospital;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity // This tells Hibernate to make a table out of this class
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;

	private String first_name;

	private String last_name;

	private String job;

	private String email;

	private String phone_number;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFirst_name(){
		return first_name;
	}

	public void setFirst_name(String first_name){
		this.first_name = first_name;
	}

	public String getLast_name(){
		return last_name;
	}

	public void setLast_name(String last_name){
		this.last_name = last_name;
	}
	public String getJob(){
		return job;
	}

	public void setJob(String job){
		this.job = job;
	}
	public String getEmail(){
		return email;
	}

	public void setEmail(String email){
		this.email = email;
	}
	public String getPhone_number(){
		return phone_number;
	}

	public void setPhone_number(String phone_number){
		this.phone_number = phone_number;
	}
}
