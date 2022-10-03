<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.dinf.entities.message" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% session.getAttribute("currentfaculty");
session.removeAttribute("currentfaculty");
message m2=new message("Logged out Succesfully","success","success");
session.setAttribute("msg",m2);
response.sendRedirect("login.jsp");
%>
</body>
</html>