<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
<%@include file="base.jsp" %>
<div class="row justify-content-center">
    <div class="col-md-6">
      <div class="card">
  <div class="card-body">
    <h5 class="card-title text-center">Register Here</h5>
    <p class="card-text">
    <form class="form-group" method="post" action="register">
    
    <input type="hidden" name="f25" class="form-control" placeholder="Enter your NAme" value="admin">
    <label for="name" class="form-label">Your Name</label>
    <input type="text" name="f1" class="form-control" placeholder="Enter your NAme">

    <label for="Dept" class="form-label">Department Name</label>
    <input type="text" name="f2" class="form-control" placeholder="Enter department NAme">
    

    <label for="gender" class="form-label">Gender</label>
    <input type="radio"  class="form-check-input" name="gender" value="male">Male
    <input type="radio" class="form-check-input" name="gender" value="female">Female
    <br>
    <label for="collegeid" class="form-label">College id</label>
    <input type="text" name="f4"class="form-control" placeholder="Enter College id">
    
    <label for="email" class="form-label">Your Email</label>
    <input type="text" name="f5" class="form-control" placeholder="Enter your Email">

    <label for="jdate" class="form-label">Your joining Date</label>
    <input type="date" name="f6" class="form-control" placeholder="Enter your joining date">
    
    <label for="bdate" class="form-label">Your BirthDate</label>
    <input type="date" name="f7" class="form-control" placeholder="Enter your birthdate">
    
    <label for="ug" class="form-label">UG </label>
    <input type="text" name="f8" class="form-control" placeholder="Enter UG course name">
    
        <label for="yearofcompletion" class="form-label">Year of completion</label>
    <input type="text" name="f9" class="form-control" placeholder="Enter year of completion">
    
    <label for="uguniversity" class="form-label">University</label>
    <input type="text" name="f10" class="form-control" placeholder="Enter university name">
    
        <label for="pg" class="form-label">PG</label>
    <input type="text" name="f11" class="form-control" placeholder="Enter PG course name">
    
        <label for="yearofcompletion" class="form-label">Year of completion</label>
    <input type="text" name="f12" class="form-control" placeholder="Enter year of completion">
    
    <label for="pguniversity" class="form-label">University</label>
    <input type="text" name="f13" class="form-control" placeholder="Enter university name">

    
        <label for="areaofres" class="form-label">Area of Research interest</label>
    <input type="text" name="f14" class="form-control" placeholder="Enter Area of Research interest">
    
        <label for="Adhar" class="form-label">Aadhar number</label>
    <input type="text" name="f15" class="form-control" placeholder="Aadhar number">
   
        <label for="pan" class="form-label">PAN</label>
    <input type="text" class="form-control" name="f16" placeholder="PAN">

    
    <label for="ijournal" class="form-label">International journal</label>
    <input type="text" class="form-control" name="f17" placeholder="Number of international journals">
    
    <label for="njournal" class="form-label">National journal</label>
    <input type="text" class="form-control" name="f18" placeholder="Number of national journals">
    
    <label for="vidwan" class="form-label">Vidwan Id</label>
    <input type="text" class="form-control" name="f19" placeholder="Enter your vidwan id">
    
    <label for="orcid" class="form-label">Orcid Id</label>
    <input type="text" class="form-control" name="f20" placeholder="Enter your orcid id">
    
        <label for="scopus" class="form-label">Scopus Id</label>
    <input type="text" class="form-control" name="f21" placeholder="Enter your scopus id">
    
    <label for="google" class="form-label">Google Scholar Id</label>
    <input type="text" class="form-control" name="f22" placeholder="Enter your google scholar id">
    
    <label for="webofscience" class="form-label">Web of science Id</label>
    <input type="text" class="form-control" name="f23"placeholder="Enter your web of science id">            
    


    <label for="password">Enter Your Password: </label>
    <input type="password" name="f24" class="form-control" placeholder="Your Password">
    
    
    
    <button type="submit" class="btn btn-primary">Register</button>
    </form>
    
    
  </div>
</div>
    </div>
</div>
</body>
</html>