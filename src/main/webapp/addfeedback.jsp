<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.klef.ep.services.EmployeeService"%>
<%@ page import="com.klef.ep.services.FeedbackService"%>
<%@ page import="javax.naming.InitialContext"%>
<%@ page import="com.klef.ep.models.Employee"%>
<%@ page import="com.klef.ep.models.Feedback"%>
<%

InitialContext context = new InitialContext();
FeedbackService feedbackService = (FeedbackService) context.lookup("java:global/EPPROJECT/FeedbackServiceImpl!com.klef.ep.services.FeedbackService");
String name = request.getParameter("name");
String email = request.getParameter("email");
String contact = request.getParameter("contact");
String feedback = request.getParameter("feedback");
Feedback fed = new Feedback();
fed.setName(name);
fed.setEmail(email);
fed.setContactno(contact);
fed.setFeedback(feedback);
feedbackService.addFeedback(fed);
response.sendRedirect("feedbacksuccess.jsp");

%>
