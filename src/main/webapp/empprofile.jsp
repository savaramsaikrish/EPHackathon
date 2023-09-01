<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"     import="com.klef.ep.models.Employee" %>
    <%
    Employee emp = (Employee)session.getAttribute("emp"); // emp is session attribute
    if(emp == null)
    {
    	response.sendRedirect("sessionexpiry.html");
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
    <a href="emphome.jsp">Home</a>&nbsp;&nbsp;&nbsp;
<a href="empprofile.jsp">Profile</a>&nbsp;&nbsp;&nbsp;
<a href="products1.xhtml">View Products</a>&nbsp;&nbsp;&nbsp;
<a href="My_mykarts.jsp">cart</a>&nbsp;&nbsp;&nbsp;
<a href="emplogout.jsp">Logout</a>&nbsp;&nbsp;&nbsp;
  </div>

  <img class="logo" src="images/erp.png" alt="Logo Here"/>
  
  <hr color="black"/>
  <hr color="black"/>
  <br/>

<h3 align="center">Welcome To Your Profile</h3>
<div align="center">
<b>Name : </b><%=emp.getName()%><br>
<b>Gender :</b> <%=emp.getGender() %><br>
<b>Contact No :</b><%=emp.getContactno()%><br>
</div>
</body>
</html>