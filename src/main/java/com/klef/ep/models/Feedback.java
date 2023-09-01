package com.klef.ep.models;
import java.io.Serializable;		
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Feedback_user")
public class Feedback implements Serializable
{
  
  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
@Id //primary key
@GeneratedValue(strategy = GenerationType.AUTO)
  private int id;
  @Column(name = "name", length = 50, nullable = false)
  private String name;
  @Column(name = "email", length = 50, nullable = false, unique = true)
  private String email; 
  @Column(name = "contact", length = 50, nullable = false, unique = true)
  private String contactno;
  @Column(name = "feedback", length = 200)
  private String feedback;
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
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getContactno() {
	return contactno;
}
public void setContactno(String contactno) {
	this.contactno = contactno;
}
public String getFeedback() {
	return feedback;
}
public void setFeedback(String feedback) {
	this.feedback = feedback;
}



}