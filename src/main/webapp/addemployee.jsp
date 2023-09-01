<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.klef.ep.services.EmployeeService"%>
<%@ page import="javax.naming.InitialContext"%>
<%@ page import="com.klef.ep.models.Employee"%>
<%

InitialContext context = new InitialContext();
EmployeeService employeeService = (EmployeeService) context.lookup("java:global/EPPROJECT/EmployeeServiceImpl!com.klef.ep.services.EmployeeService");

String name = request.getParameter("name");
String gender = request.getParameter("gender");
String email = request.getParameter("email");
String pwd = request.getParameter("pwd");
String contact = request.getParameter("contact");

Employee emp = new Employee();
emp.setName(name);
emp.setGender(gender);
emp.setEmail(email);
emp.setPassword(pwd);
emp.setContactno(contact);

employeeService.addEmployee(emp);

response.sendRedirect("addempsuccess.jsp");

%>
