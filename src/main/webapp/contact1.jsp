<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

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
    .contact-us {
      /* Add the background image URL here */
      background-size: cover;
      background-position: center;
      color: #1a1a1a;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      max-width: 500px;
      margin: 0 auto;
    }

    .contact-us h2 {
      font-size: 30px;
      margin-bottom: 10px;
      color: #fff;
      background-color: #000000;
      padding: 8px;
      border-radius: 6px;
    }

    .contact-us p {
      font-size: 16px;
      margin-bottom: 10px;
    }

    .contact-us ul {
      list-style: none;
      padding: 0;
      margin: 0;
    }

    .contact-us li {
      font-size: 16px;
      margin-bottom: 5px;
    }

    .contact-us a {
      color: #ec2907;
      text-decoration: none;
    }

    .contact-us a:hover {
      text-decoration: underline;
    }

    .contact-us .btn {
      display: inline-block;
      background-color: #ec2907;
      color: #fff;
      padding: 8px 16px;
      border-radius: 4px;
      text-decoration: none;
      margin-right: 10px;
    }

    .contact-us .btn:hover {
      background-color: #000000;
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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<h2 align="center">Tribal Handicraft Shopee</h2>
  <div class="navbar">
    <a href="index.jsf">Home</a>
    <a href="products.xhtml">View Products</a>
    <a href="feedback.jsp">Feedback</a>
    <a href="contactus.jsp">Contact</a>
  </div>

  <img class="logo" src="images/erp.png" alt="Logo Here"/>
  
  <hr color="black"/>
  <hr color="black"/>
<body>

  <br/>
	<div class="contact-us">
    <h2>Contact Us</h2>
    <p>We are here to help you promote your tribal handicraft business.</p>
    <ul>
      <li><strong>Email:</strong> <a href="savaramsaikrish@gmail.com">Trade@gmail.com</a></li>
      <li><strong>Phone:</strong> +91 85585 63634</li>
      <li><strong>Address:</strong> 	K L Deemed to be University, Green Fields, Vaddeswaram, Guntur District, A.P., INDIA.</li>
    </ul>
    <p>You can also contact us through our social media channels:</p>
    <ul>
      <li><a href="https://www.facebook.com/tribalhandicrafts/">Facebook</a></li>
      <li><a href="https://twitter.com/tribalhandicrafts/">Twitter</a></li>
      <li><a href="https://www.instagram.com/incog.entity/">Instagram</a></li>
    </ul>
    <p>We look forward to hearing from you!</p>
    <a class="btn" href="mailto:dk@gmail.com">Email Us</a>
    <a class="btn" href="tel:+1234567890">Call Us</a>
  </div>
</body>
</html>