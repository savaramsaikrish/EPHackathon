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
    <a href="feedback.jsp">Feedback</a>
    <a href="adminlogin.jsp">Admin Login</a>
     <a href="contactus.jsp">Contact</a>
  </div>

  <img class="logo" src="images/erp.png" alt="Logo Here"/>
  
  <hr color="black"/>
  <hr color="black"/>
  <br/>
<h2 align="center"><u>User Registration</u></h2>
<form method="post"  action="addemployee.jsp" >
<table align="center">

<tr><td></td></tr>
<tr>
    <td><b>Full Name</b></td>
    <td>
        <input type="text" name="name" required>
    </td>
</tr>
<tr><td></td></tr>
<tr>
    <td><b>Select Gender</b></td>
    <td>
        Male<input type="radio" name="gender" value="male" required>
        Female<input type="radio" name="gender" value="female" required>
    </td>
</tr>
<tr><td></td></tr>
<tr>
    <td><b>Email Address</b></td>
    <td>
        <input type="text" name="email" required>
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
<tr>
    <td><b>Contact No</b></td>
    <td>
        <input type="number" name="contact" required>
    </td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>


<tr align="center">
    
    <td>
        <input type="submit" value="Register" required class="button">
    </td>
    <td>
        <input type="reset" value="Clear" required class="button">
    </td>
</tr>
</table>
<div align="center">
<a href="employeelogin.jsp">Already have an account?</a>
</div>

</body>
</html>
