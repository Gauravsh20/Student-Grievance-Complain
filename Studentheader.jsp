<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="Style/login.css">
<link rel="stylesheet" href="Style/login.css">
 <script src="js/jquery-3.5.1.js"></script>
<script src="js/bootstrap.js"></script>
<meta charset="ISO-8859-1">
<title>Student Home Page </title>
</head>
<body>
<div class="jumbotron m-0">
	<h2>Student Home Page</h2>
	<h4><b><%=session.getAttribute("fname") %></b> <b><%=session.getAttribute("lname") %></b> </h4> 
	<a href="logout" class="btn" id="btn1">Log out</a> 
</div>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Student</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="studentFirst.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Studenthome.jsp">Add Complain</a>
      </li>
    
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Setting
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="studentchangepss.jsp">Change Password</a>
          <a class="dropdown-item" href="studenteditpro.jsp">Edit Profile</a>
        </div>
      </li>
    </ul>
  </div>
</nav>	
