package com.chinasoft.pojo;

public class Users {
	private int uid;
	private String username;
	private String password;
	private String gender;
	private String address;
	private String phone;
	private String type;
	private String email;
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	
	public Users(int uid, String username, String password, String gender,
			String address, String phone, String type, String email) {
		super();
		this.uid = uid;
		this.username = username;
		this.password = password;
		this.gender = gender;
		this.address = address;
		this.phone = phone;
		this.type = type;
		this.email = email;
	}
	public Users(int uid, String username, String password, String gender,
			String address, String phone, String type) {
		super();
		this.uid = uid;
		this.username = username;
		this.password = password;
		this.gender = gender;
		this.address = address;
		this.phone = phone;
		this.type = type;
	}
	public Users() {
		super();
	}
	
	
}
