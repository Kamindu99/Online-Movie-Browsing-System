package com.movie;

public class Contactus {

	private int cid;
	private String name;
	private String email;
	private String message;
	
	public Contactus(int cid,String name, String email, String message) {
		this.cid = cid;
		this.name = name;
		this.email = email;
		this.message = message;
	}

	public int getCid() {
		return cid;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getMessage() {
		return message;
	}
	
}
