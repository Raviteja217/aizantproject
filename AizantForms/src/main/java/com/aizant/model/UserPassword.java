package com.aizant.model;

import javax.persistence.Entity;

@Entity
public class UserPassword {

	private String userPassword;

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	
}
