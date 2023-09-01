package com.klef.ep.services;

import java.util.List;		

import javax.ejb.Stateless;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.klef.ep.models.Employee;
import com.klef.ep.models.Feedback;

@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class FeedbackServiceImpl  implements FeedbackService
{
	public String addFeedback(Feedback fed) 
	{
	  EntityManagerFactory emf = Persistence.createEntityManagerFactory("jpa");
   	  EntityManager em = emf.createEntityManager();
   	  
   	  em.getTransaction().begin();
   	  em.persist(fed);     // insert operation
   	  em.getTransaction().commit();
   	  
   	  em.close();
   	  emf.close();
   	  
   	  return "Record Inserted Successfully";
	}

}
