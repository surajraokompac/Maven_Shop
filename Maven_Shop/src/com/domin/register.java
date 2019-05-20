package com.domin;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;


public class register {

private int id;
	
private String name;
	
private String password;
	
private String email;

private String address;
	
private String country;
	
private String city;
	
private int number;

public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getCountry() {
	return country;
}
public void setCountry(String country) {
	this.country = country;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}

public int getId() {
	
	return id;
}
public void setId(String id) {
	int id1=Integer.parseInt(id);
	this.id = id1;
}
public int getNumber() {
	
	return number;
}
public void setNumber(String number) {
	int num=Integer.parseInt(number);
	this.number = num;
}
@Override
public String toString() {
	return "register [id=" + id + ", name=" + name + ", password=" + password + ", email=" + email + ", address="
			+ address + ", country=" + country + ", city=" + city + ", number=" + number + "]";
}



}
