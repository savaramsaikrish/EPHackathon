<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
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
    <a href="adminlogin.jsp">Admin Login</a>
  </div>

  <img class="logo" src="images/erp.png" alt="Logo Here"/>
  
  <hr color="black"/>
  <hr color="black"/>
  <br/>
    <h2 align="center">Forgot Password</h2>
    <form method="post" action="resetpassword.jsp">
        <table align="center">
            <tr>
                <td><b>Email ID</b></td>
                <td>
                    <input type="email" name="email" required>
                </td>
            </tr>
            <tr>
                <td><b>Security Question 1</b></td>
                <td>
                    <input type="text" name="securityQuestion1" required>
                </td>
            </tr>
            <tr>
                <td><b>Answer 1</b></td>
                <td>
                    <input type="text" name="answer1" required>
                </td>
            </tr>
            <tr>
                <td><b>Security Question 2</b></td>
                <td>
                    <input type="text" name="securityQuestion2" required>
                </td>
            </tr>
            <tr>
                <td><b>Answer 2</b></td>
                <td>
                    <input type="text" name="answer2" required>
                </td>
            </tr>
            <tr>
                <td><b>Security Question 3</b></td>
                <td>
                    <input type="text" name="securityQuestion3" required>
                </td>
            </tr>
            <tr>
                <td><b>Answer 3</b></td>
                <td>
                    <input type="text" name="answer3" required>
                </td>
            </tr>
            <tr align="center">
                <td colspan="2">
                    <input type="submit" value="Reset Password" required>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
