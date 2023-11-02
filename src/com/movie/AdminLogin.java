package com.movie;

public class AdminLogin {
	
private int aid;
private String username;
private String password;
private String name;
private String phone;



public AdminLogin(int aid, String username, String password, String name, String phone) {
	
	this.aid = aid;
	this.username = username;
	this.password = password;
	this.name = name;
	this.phone = phone;
}


public int getAid() {
	return aid;
}

public String getUsername() {
	return username;
}

public String getPassword() {
	return password;
}

public String getName() {
	return name;
}

public String getPhone() {
	return phone;
}

}
