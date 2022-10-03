<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HOME</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
<style>

</style>
</head>
<body>
<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.http.HttpServletResponse"%>
<%@ page import="jakarta.servlet.http.HttpServletRequest"%>
<%@ page import="com.dinf.helper.ConnectionProvider" %>
<%@include file="navbar.jsp" %><br><br>
<% Connection con=ConnectionProvider.getConnection(); 
String query="select * from facult24 ORDER BY jdate";
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery(query);
%>
    <%message m2=(message)session.getAttribute("msg");
    if(m2!=null){%>
    	<div class="alert alert-<%= m1.getCssClass() %>" role="alert">
    	  <%= m2.getContent() %>
    	</div>
    <%} %>
    <% session.removeAttribute("msg");%>
<div class="row justify-content-center">
<h3>All Faculties in our Department are listed below</h3>
  <div class="col-md-11">
     <table class="table">
  <thead>
    <tr>
      <th scope="col">Edit</th>
      <th scope="col">Dept</th>
      <th scope="col">Name</th>
      <th scope="col">Gender</th>
      <th scope="col">College id</th>
      <th scope="col">Email</th>
      <th scope="col">Joining date</th>
      <th scope="col">Birth date</th>
      <th scope="col">UG</th>
      <th scope="col">YEAR of PASSING(UG)</th>
      <th scope="col">UG university</th>
      <th scope="col">PG</th>
      <th scope="col">YEAR of PASSING(PG)</th>
      <th scope="col" align="center">PG university</th>      
      <th scope="col" align="center">Area of research interest</th>
      <th scope="col">Aadhar number</th>
      <th scope="col">PAN number</th>
      <th scope="col">international journals</th>
      <th scope="col">National journals</th>
      <th scope="col">Vidwan id</th>
      <th scope="col">Orcid id</th>
      <th scope="col">Scopus id</th>
      <th scope="col">Google Scholar id</th>
      <th scope="col">Web of Science id</th>
      <th scope="col">Delete</th>
    </tr>
    </thead>
    <tbody>
    
        <tr>
        <% while(rs.next()){ %>
      <td><a href="nedit.jsp?fac_name=<%=rs.getString("name") %>">Edit</a></td>
      <th scope="col"><%=rs.getString("department") %></th>
      <th scope="col"><%=rs.getString("name") %></th>
      <td scope="col"><%=rs.getString("gender") %></td>
      <td scope="col"><%=rs.getString("collegeid") %></td>
      <td scope="col"><%=rs.getString("email") %></td>
      <td scope="col"><%=rs.getString("jdate") %></td>
      <td scope="col"><%=rs.getString("bdate") %></td>
      <td scope="col"><%=rs.getString("ugcourse") %></td>
      <td scope="col"><%=rs.getString("ugyoc") %></td>
      <td scope="col"><%=rs.getString("uguniversity") %></td>
      <td scope="col"><%=rs.getString("pgcourse") %></td>
      <td scope="col"><%=rs.getString("pgyoc") %></td>      
      <td scope="col"><%=rs.getString("pguniversity") %></td>
      <td scope="col"><%=rs.getString("researcharea") %></td>
      <td scope="col"><%=rs.getString("adhar") %></td>
      <td scope="col"><%=rs.getString("pan") %></td>
      <td scope="col"><%=rs.getString("ijpub") %></td>
      <td scope="col"><%=rs.getString("njpub") %></td>
      <td scope="col"><%=rs.getString("vid") %></td>
      <td scope="col"><%=rs.getString("oid") %></td>
      <td scope="col"><%=rs.getString("sid") %></td>
      <td scope="col"><%=rs.getString("gid") %></td>
      <td scope="col"><%=rs.getString("wid") %></td>
      <td><a href="delete?fac_name=<%=rs.getString("name") %>">Delete</a></td>
      <tr>
      <%}%>
    </tr>
  
</tbody>
  </table>  
  </div>
</div>
</body>
</html>