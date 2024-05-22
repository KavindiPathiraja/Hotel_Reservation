<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
    <style>
        body {
        	background-image: url('image/bg1.jpg');
            background-color: #E5E1DA !important;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            font-family: 'Arial', sans-serif;
            color: #343a40;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            background-color: #c6af88;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        input[type="text"],
        input[type="password"],
        input[type="submit"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #333333;
            color: white;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #555;
        }

        .error-message {
            color: red;
            margin-top: 10px;
        }
        footer {
           
            bottom: 0;
            width: 100%;
            background-color: #333333;
            color: white;
            text-align: center;
            padding: 10px 0;
        }

    </style>
</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #333333">
        <div>
            <a href="" class="navbar-brand"> Hotel Reservation System </a>
        </div>
        <ul class="navbar-nav">
                <li><a href="login.jsp" class="nav-link">Login</a></li>
        </ul>
    </nav>
</header>
<div class="container">
    <form action="insertCustomer" method="post">
        <h2 class="text-center mb-4">User Registration</h2>
        <label for="cusName">Customer Name:</label>
        <input type="text" id="cusName" name="cusName" required>

        <label for="address">Address:</label>
        <input type="text" id="address" name="address" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="phoneNumber">Phone Number:</label>
        <input type="text" id="phoneNumber" name="phoneNumber" required pattern="0[0-9]{9}" 
        title="Please enter a 10-digit phone number starting with 0">

        <label for="userName">Username:</label>
        <input type="text" id="userName" name="userName" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{1,6}$"
                        title="Password must contain at least one letter, one number, and be at most 6 characters long">

        <input type="submit" value="Register">
    </form>
</div>
<footer>
    <!-- Footer content here -->
    <p>&copy; 2024 User Management</p>
</footer>
</body>
</html>
