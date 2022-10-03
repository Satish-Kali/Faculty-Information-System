<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Navbar</title>

</head>
<body>
<% faculty f=(faculty)session.getAttribute("currentfaculty"); %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" session="true"%>
<%@ page import="java.util.*" %>
<%@ page import="com.dinf.entities.faculty" %>
<%@ page import="com.dinf.entities.message" %>
<%faculty ff=(faculty)session.getAttribute("currentfaculty"); %>
<% message m1= ( message )session.getAttribute("msg");%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Faculty Information System</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
        </li>

        <% if(f==null){%>
        <li class="nav-item">
          <a class="nav-link" href="login.jsp">Login</a>
        </li>
        <%}else{ %>

        <li class="nav-item">
          <a class="nav-link" href="logout.jsp">Logout </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><%= f.getName() %> </a>
        </li>
        <%} %>
      </ul>
      
    </div>
  </div>
</nav>
</body>
</html>