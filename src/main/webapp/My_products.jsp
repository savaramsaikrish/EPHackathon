<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f1f1f1;
}

.shop-container {
    max-width: 800px;
    margin: 50px auto;
    background-color: #fff;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

.shop-header {
    background-color: #007bff;
    padding: 10px;
    color: #fff;
    text-align: center;
}

.shop-content {
    padding: 20px;
}

.card {
    padding: 20px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

.card img {
    max-width: 100%;
    height: auto;
    border-radius: 5px;
    margin-bottom: 10px;
}

.card h2 {
    font-size: 18px;
    margin-bottom: 10px;
}

.card p {
    margin-bottom: 10px;
}

.add-to-cart {
    padding: 10px 20px;
    border: none;
    background-color: #007bff;
    color: #fff;
    border-radius: 5px;
    cursor: pointer;
}

.add-to-cart:hover {
    background-color: #0056b3;
}

.cart-items {
    max-width: 400px;
    margin: 0 auto;
}

.cart-items h2 {
    font-size: 18px;
    margin-bottom: 10px;
}

.cart-items ul {
    list-style: none;
    padding: 0;
}

.cart-items li {
    margin-bottom: 10px;
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
<title>EP Project</title>
<link type="text/css"  rel="stylesheet"  href="myproducts.css"/>
</head>
<body bgcolor="lightblue">

<h2 align="center">Tribal Handicraft Shopee</h2>
  <div class="navbar">
   <a href="emphome.jsp">Home</a>&nbsp;&nbsp;&nbsp;
<a href="empprofile.jsp">Profile</a>&nbsp;&nbsp;&nbsp;

<a href="My_products.jsp">cart</a>&nbsp;&nbsp;&nbsp;
<a href="products1.xhtml">View Products</a>&nbsp;&nbsp;&nbsp;

<a href="emplogout.jsp">Logout</a>&nbsp;&nbsp;&nbsp;
  </div>

  <img class="logo" src="images/erp.png" alt="Logo Here"/>
  
  <hr color="black"/>
  <hr color="black"/>
  
<h2 align="center"><u>My products</u></h2>
<form method="post"   action="My_products.jsp"> 

<body>
    <div class="shop-container">
        <div class="shop-header">
            <h1>My Products</h1>
        </div>
        <div class="shop-content">
            <div class="card">
                <img src="product1.jpg" alt="Product 1">
                <h2>Product 1</h2>
                <p>Description of Product 1.</p>
                <p>Price: $20</p>
                <button class="add-to-cart" onclick="addToCart('Product 1', 20)">Add to Cart</button>
            </div>
            <div class="card">
                <img src="product2.jpg" alt="Product 2">
                <h2>Product 2</h2>
                <p>Description of Product 2.</p>
                <p>Price: $30</p>
                <button class="add-to-cart" onclick="addToCart('Product 2', 30)">Add to Cart</button>
            </div>
            <!-- Add more product cards here -->
        </div>
    </div>

    <script>
        function addToCart(productName, price) {
            const cartItem = {
                name: productName,
                price: price
            };

            // Check if cart exists in local storage
            let cart = JSON.parse(localStorage.getItem("cart")) || [];

            // Add the new item to the cart
            cart.push(cartItem);

            // Store the updated cart back to local storage
            localStorage.setItem("cart", JSON.stringify(cart));

            // Redirect to My Cart page after adding the item to the cart
            window.location.href = "My_mykarts.jsp";
        }
    </script>
</body>

</html>