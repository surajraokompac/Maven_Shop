package com.hibernateDomain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="employee")
public class employee {
	@Column
private int id;
	@Column
private String name;
	@Column
private String password;
	@Column
private String email;
	@Column
private String address;
	@Column
private String country;
	@Column
private String city;
	@Column
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
public void setId(int id) {
	
	this.id = id;
}
public int getNumber() {
	
	return number;
}
public void setNumber(int number) {
	
	this.number = number;
}
@Override
public String toString() {
	return "register [id=" + id + ", name=" + name + ", password=" + password + ", email=" + email + ", address="
			+ address + ", country=" + country + ", city=" + city + ", number=" + number + "]";
}



}
