	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	<html xmlns="http://www.w3.org/1999/xhtml"
	      xmlns:ui="http://java.sun.com/jsf/facelets"
	      xmlns:f="http://java.sun.com/jsf/core"
	      xmlns:h="http://java.sun.com/jsf/html">
	
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
	    .feedback-section {
	      text-align: center;
	    }
	
	    .feedback-form {
	      max-width: 400px;
	      margin: 0 auto;
	    }
	
	    .feedback-form table {
	      width: 100%;
	    }
	
	    .feedback-form table td {
	      padding: 5px;
	    }
	
	    .feedback-form .button-container {
	      text-align: center;
	    }
	
	    .feedback-form .button {
	      padding: 10px 20px;
	    }
	    .feedback-form textarea {
	    width: 100%;
	    resize: vertical; /* Allow vertical resizing */
	    min-height: 100px; 
	    
	  </style>
	</head>
	
	<body>
	<h2 align="center">Tribal Handicraft Shopee</h2>
	  <div class="navbar">
	    <a href="index.jsf">Home</a>
	    <a href="employeelogin.jsp">User Login</a>
	    <a href="employeereg.jsp">User Registration</a>
	    <a href="products.xhtml">View Products</a>
	    <a href="feedback.jsp">Feedback</a>
	    <a href="adminlogin.jsp">Admin Login</a>
	    <a href="contactus.jsp">Contact</a>
	  </div>
	
	  <img class="logo" src="images/erp.png" alt="Logo Here"/>
	  
	  <hr color="black"/>
	  <hr color="black"/>
	  <br/>
	
	  <body>
	
	<div class="feedback-section">
	    <h2><u>User Feedback</u></h2>
	    <form method="post" action="addfeedback.jsp" class="feedback-form">
	      <table>
	        <tr>
	          <td><b>Full Name</b></td>
	          <td>
	            <input type="text" name="name" required>
	          </td>
	        </tr>
	        <tr>
	          <td><b>Email Address</b></td>
	          <td>
	            <input type="text" name="email" required>
	          </td>
	        </tr>
	        <tr>
	          <td><b>Contact No</b></td>
	          <td>
	            <input type="number" name="contact" required>
	          </td>
	        </tr>
	        <tr>
	          <td><b>Feedback</b></td>
	          <td>
	            <input type="text" name="feedback" required>
	          </td>
	        </tr>
	        <tr>
	          <td colspan="2" class="button-container">
	            <input type="submit" value="Submit Feedback" required class="button">
	            <input type="reset" value="Clear" required class="button">
	          </td>
	        </tr>
	      </table>
	</body>
	</html>