<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<%@include file="base.jsp" %>
<%@ page import="com.dinf.entities.message" %>
<div class="row justify-content-center">
    <div class="col-md-6">
      <div class="card">
  <div class="card-body">
    <h5 class="card-title text-center">Login Here</h5>
    <%message m1=(message)session.getAttribute("msg");
    if(m1!=null){%>
    	<div class="alert alert-<%= m1.getCssClass() %>" role="alert">
    	  <%= m1.getContent() %>
    	</div>
    <%} %>
    <% session.removeAttribute("msg");%>
    
    <p class="card-text">
    <form class="form-group" method="post" action="login">
    
    <label for="email" class="form-label">Your Email</label>
    <input type="text" class="form-control" placeholder="Enter your Email" name="txtemail">
    <br>
    
    
    <label for="password">Enter Your Password: </label>
    <input type="password" class="form-control" placeholder="Your Password" name="txtpass">
    <br>
    <button type="submit" class="btn btn-primary">Login</button><br>
    <hr>
    <p>View details without Logging-in</p>
    <a href="view.jsp"><input type="button" value="VIEW" class="btn btn-primary"/></a>
    </form>
    
    
    
  </div>
</div>
    </div>
</div>
</body>
</html>