<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"   import="java.sql.*,java.util.List"  %>
<%@page import="com.klef.ep.services.AdminService"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="com.klef.ep.models.Employee"%>
<%@ page import="com.klef.ep.models.Feedback"%>
<%@page import="com.klef.ep.models.Admin"%>

<!DOCTYPE html>
<html>
<head>
<title>EP Project</title>
  <link type="text/css" rel="stylesheet" href="style.css"/>
  <style>
    /* Reset the default margin and padding */
    body, ul {
      margin: 0;
      padding: 0;
    }
    .container {
      display: flex;
      justify-content: space-between;
      flex-wrap: wrap;
    }

    .left-content {
      flex: 1;
      max-width: 50%;
    }

    .right-content {
      flex: 1;
      text-align: right;
      max-width: 50%;
      box-sizing: border-box;
      padding: 0 20px; /* Add some padding to keep space between the image and the right edge */
    }

    .imageColumn img {
      max-width: 450%;
      height: auto;
    }

    @media (max-width: 767px) {
      .container {
        flex-direction: column;
      }

      .right-content {
        max-width: 100%;
      }
    }
    

    /* Style the navbar */
    .navbar {
      background-color: #333;
      overflow: hidden;
    }

    .navbar a {
      float: left;
      display: block;
      color: white;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
    }

    /* Change color on hover */
    .navbar a:hover {
      background-color: #ddd;
      color: black;
    }

    .container {
      display: flex;
      justify-content: space-between;
    }

    .left-content {
      flex: 1;
    }

    .right-content {
      flex: 1;
      text-align: right;
    }
  </style>
</head>

<body>
<h2 align="center">Tribal Handicraft Shopee</h2>
  <div class="navbar">
    <a href="adminhome.jsp">Home</a>&nbsp;&nbsp;&nbsp;
    <a href="viewallemps.jsp">View All Users</a>&nbsp;&nbsp;&nbsp;
    <a href="viewallfeedback.jsp">View User Feedback</a>&nbsp;&nbsp;&nbsp;
    <a href="adminlogout.jsp">Logout</a>&nbsp;&nbsp;&nbsp;

  </div>

  <img class="logo" src="images/erp.png" alt="Logo Here"/>
  
  <hr color="black"/>
  <hr color="black"/>
  <br/>


<h2 align="center"><u>View Feedback</u></h2>
<table align="center"  border=2>
<tr>
<th>NAME</th>
<th>EMAIL</th>
<th>CONTACT NO</th>
<th>FEEDBACK GIVEN</th>
</tr>
<%
InitialContext context = new InitialContext();
AdminService adminService = (AdminService) context.lookup("java:global/EPPROJECT/AdminServiceImpl!com.klef.ep.services.AdminService");

List<Feedback> fedlist = adminService.viewAllFeedback();

for(Feedback fed : fedlist)
{
	  %>
	  
	    <tr>
	    	  <td><%=fed.getName()%></td>
	    	  <td><%=fed.getEmail()%></td>	    
	    	  <td><%=fed.getContactno()%></td>
	    	  <td><%=fed.getFeedback()%></td>	   
	    </tr>
	  
	  <%
}

%>
</table>


</body>
</html>