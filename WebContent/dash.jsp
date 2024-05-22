<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Details</title>
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

    table.table-bordered > thead > tr > th,
    table.table-bordered > tbody > tr > td {
        border: 2px solid #000; /* Change border color here */
    }

    .content {
        padding: 20px;
        background-color: #c6af88;
    }

    .main-content {
	    margin: 50px auto; 
	    max-width: 500px;
	    display: flex; 
	    flex-direction: column; 
	    
	}
	.button-container {
    display: flex;
    

    footer {
        position: fixed;
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
                <li><a href="dash.jsp" class="nav-link">Dashboard</a></li>
            </ul>
            <!-- Logout Form -->
            <form action="logout" method="post">
                <button class="nav-link button" data-bs-toggle="modal" data-bs-target="#signup-modal" type="submit" style="background-color: #cc9966;">Logout</button>
            </form>
        </nav>
    </header>
    
    <div class="content main-content">
        <h2>Customer Details</h2>
        
        <h3>Welcome, 
            <c:if test="${not empty sessionScope.customer}">
                ${sessionScope.customer.cusName}
            </c:if>
            !
        </h3>
        
        <p>Customer ID: ${sessionScope.customer.cusID}</p>
        <p>Name: ${sessionScope.customer.cusName}</p>
        <p>Address: ${sessionScope.customer.address}</p>
        <p>Email: ${sessionScope.customer.email}</p>
        <p>Phone Number: ${sessionScope.customer.phoneNumber}</p>
        <p>Username: ${sessionScope.customer.userName}</p>
    
        <div class="button-container">
		    <a href="<%=request.getContextPath()%>/editCustomer?cusID=${sessionScope.customer.cusID}" class="btn btn-primary">Edit</a>
		    <a href="<%=request.getContextPath()%>/deleteCustomer?cusID=${sessionScope.customer.cusID}" class="btn btn-danger" 
		    onclick="return confirm('Are you sure you want to delete this customer?')">Delete</a>
		</div>

    </div>
    
    
    
    <footer>
        <!-- Footer content here -->
        <p>&copy; 2024 User Management</p>
    </footer>
    
</body>
</html>
