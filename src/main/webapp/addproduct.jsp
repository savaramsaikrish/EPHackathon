<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    String username = (String)session.getAttribute("username");
    if(username == null)
    {
    	response.sendRedirect("asessionexpiry.html");
    }
    %>
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
<a href="viewallemps.jsp">View All Employees</a>&nbsp;&nbsp;&nbsp;
<a href="addproduct.jsp">Add Product</a>&nbsp;&nbsp;&nbsp;
<a href="viewallproducts.jsp">View All Products</a>&nbsp;&nbsp;&nbsp;
<a href="adminlogout.jsp">Logout</a>&nbsp;&nbsp;&nbsp;

  </div>

  <img class="logo" src="images/erp.png" alt="Logo Here"/>
  
  <hr color="black"/>
  <hr color="black"/>
  <br/>

Welcome <%=username%>

<br>

<h2 align="center"><u>Add Product</u></h2>
<form method="post"  action="insertproduct" enctype="multipart/form-data">
<table align="center">
<tr><td></td></tr>
<tr>
    <td><b>Category</b></td>
    <td>
        <select name="pcategory" required>
        <option value="">---Select---</option>
        <option value="bags">Bags</option>
         <option value="cloths">Clothing</option>
        </select>
    </td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr>
    <td><b>Name</b></td>
    <td>
        <input type="text" name="pname" required>
    </td>
</tr>
<tr><td></td></tr>
<tr>
    <td><b>Cost</b></td>
    <td>
        <input type="number" name="pcost" required>
    </td>
</tr>
<tr><td></td></tr>
<tr>
    <td><b>Description</b></td>
    <td>
        <textarea name="pdesc"></textarea>
    </td>
</tr>
<tr><td></td></tr>
<tr>
    <td><b>Image</b></td>
    <td>
         <input type="file" name="pimage" required>
    </td>
</tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr align="center">
    <td>
        <input type="submit" value="Add" required>
    </td>
    <td>
        <input type="reset" value="Clear" required>
    </td>
</tr>
</table>

</form>

</body>
</html>