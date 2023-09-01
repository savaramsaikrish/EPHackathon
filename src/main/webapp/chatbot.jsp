<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>EP Project</title>
<link type="text/css"  rel="stylesheet"  href="chatbot.css"/>

<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f1f1f1;
}

.chat-container {
    max-width: 600px;
    margin: 50px auto;
    background-color: #fff;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

.chat-header {
    background-color: #007bff;
    padding: 10px;
    color: #fff;
    text-align: center;
}

.chat-log {
    display: flex;
    flex-wrap: wrap;
    padding: 10px;
}

.query-box, .answer-box {
    flex: 1;
    padding: 10px;
}

h2 {
    margin: 0;
    padding-bottom: 10px;
    color: #007bff;
}

.query-box li {
    list-style-type: none;
    cursor: pointer;
    padding: 5px 0;
    color: #007bff;
}

.query-box li:hover {
    text-decoration: underline;
}

.answer {
    display: none;
}

.answer p {
    margin: 0;
    padding: 5px 0;
}
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
<body bgcolor="lightblue">

<h2 align="center">Tribal Handicraft Shopee</h2>
  <div class="navbar">
    <a href="index.jsf">Home</a>
    <a href="employeelogin.jsp">User Login</a>
    <a href="employeereg.jsp">User Registration</a>
    <a href="products.xhtml">View Products</a>
    <a href="feedback.jsp">Feedback</a>
    <a href="adminlogin.jsp">Admin Login</a>
    <a href="contactus.jsp">Contact</a>
    <a href="chatbot.jsp">Guidance</a>
  </div>

  <img class="logo" src="images/erp.png" alt="Logo Here"/>
  
  <hr color="black"/>
  <hr color="black"/>
  <br/>


<form method="post"   action="chatbot.jsp"> 

<body>
    <div class="chat-container">
        <div class="chat-header">
            <h1>HelpDesk</h1>
        </div>
        <div class="chat-log">
            <div class="query-box">
                <h2>Online Shopping Queries</h2>
                <ul>
                    <li data-answer="answer1">How can I place an order?</li>
                    <li data-answer="answer2">What payment methods do you accept?</li>
                    <li data-answer="answer3">How long does shipping take?</li>
                    <!-- Add more online shopping queries here -->
                </ul>
            </div>
            <div class="answer-box">
                <h2>Answers</h2>
                <div id="answer1" class="answer">
                    <p>To place an order, simply browse our website, add items to your cart, and proceed to checkout.</p>
                </div>
                <div id="answer2" class="answer">
                    <p>We accept various payment methods, including credit cards, PayPal, and Apple Pay.</p>
                </div>
                <div id="answer3" class="answer">
                    <p>Shipping typically takes 3-5 business days for domestic orders. International shipping times vary based on location.</p>
                </div>
                <!-- Add more answers for online shopping queries here -->
            </div>
        </div>
    </div>

    <script>
        const queryList = document.querySelectorAll(".query-box li");
        for (const query of queryList) {
            query.addEventListener("click", function () {
                const answerId = this.getAttribute("data-answer");
                const answerBoxes = document.querySelectorAll(".answer");
                for (const box of answerBoxes) {
                    box.style.display = "none";
                }
                const answerBox = document.getElementById(answerId);
                if (answerBox) {
                    answerBox.style.display = "block";
                }
            });
        }
    </script>
</body>

</html>