package com.domin;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;


public class login {
	
private int id;

private String password;


public int getId() {
	
	return id;
}
public void setId(String id) {
	int id1=Integer.parseInt(id);
	this.id = id1;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
@Override
public String toString() {
	return "login [id=" + id + ", password=" + password + "]";
}

}
