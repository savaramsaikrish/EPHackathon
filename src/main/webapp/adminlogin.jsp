<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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

<h2 align="center"><u>Admin Login</u></h2>
<form method="post"   action="checkadminlogin.jsp"> 
<table align="center">
<tr>
</tr>
<tr><td></td></tr>
<tr>
    <td><b>Username</b></td>
    <td>
        <input type="text" name="uname" required>
    </td>
</tr>
<tr><td></td></tr>
<tr>
    <td><b>Password</b></td>
    <td>
        <input type="password" name="pwd" required>
    </td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr align="center">
    <td>
        <input type="submit" value="Login" required>
    </td>
    <td>
        <input type="reset" value="Clear" required>
    </td>
</tr>
</table>
</form>

</body>
</html>