package com.klef.ep.services;

import java.util.List;

import javax.ejb.Remote;

import com.klef.ep.models.Employee;
import com.klef.ep.models.Feedback;

@Remote
public interface FeedbackService
{
	public String addFeedback(Feedback fed);
}
