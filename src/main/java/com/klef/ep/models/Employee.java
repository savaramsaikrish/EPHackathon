package com.klef.ep.models;

import java.io.Serializable;		

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_valid")
public class Employee implements Serializable
{
  
  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
@Id //primary key
@GeneratedValue(strategy = GenerationType.AUTO)
  private int id;
  @Column(name = "ename", length = 50, nullable = false)
  private String name;
  @Column(name = "egender", length = 10, nullable = false)
  private String gender;
  @Column(name = "eemail", length = 50, nullable = false, unique = true)
  private String email; 
  @Column(name = "epassword", length = 50, nullable = false)
  private String password;
  @Column(name = "econtactno", length = 50, nullable = false, unique = true)
  private String contactno;
public int getId() {
	return id;
}
public void setId()
{
	this.id=id;
}

public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}

public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getContactno() {
	return contactno;
}
public void setContactno(String contactno) {
	this.contactno = contactno;
}

}