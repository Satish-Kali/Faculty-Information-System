<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Faculty</title>
</head>
<body>
<%@include file="base.jsp" %>
<%@include file="navbar.jsp" %>
<div class="row justify-content-center">
      <div class="col-md-8">
            <div class="card">
              <div class="card-body">
                   <h5 class="card-title text-center">Add Faculty</h5>
                   <p class="card-text">
                      <form action="addfac" method="post" class="form-group">
                          <label for="fid" class="form-label">Enter Faculty Id</label>
                          <input type="text" name="fi" class="form-control" placeholder="fid">
                          
                          <label for="name" class="form-label">Enter Faculty Name</label>
                          <input type="text" name="f1" class="form-control" placeholder="name">

                          <label for="Dept" class="form-label">Enter Faculty Email</label>
                          <input type="text" name="txtemail" class="form-control" placeholder="Enter email-id">
                          
                          <label for="Dept" class="form-label">Enter Faculty Department Name</label>
                          <input type="text" name="f2" class="form-control" placeholder="Enter department Name">
    

                         <label for="gender" class="form-label">Gender</label>
                         <input type="radio"  class="form-check-input" name="gender" value="male">Male
                         <input type="radio" class="form-check-input" name="gender" value="female">Female
                         <br>
                         
                         <label for="collegeid" class="form-label">Enter Facultie's College id</label>
                         <input type="text" name="f4"class="form-control" placeholder="Enter College id">
    
                         <label for="jdate" class="form-label">Enter Faculty joining Date</label>
                         <input type="date" name="f6" class="form-control" placeholder="Enter your joining date">
    
                         <label for="bdate" class="form-label">Enter Faculty BirthDate</label>
                         <input type="date" name="f7" class="form-control" placeholder="Enter your birthdate">
    
                         <label for="ug" class="form-label">Enter UG Course Name</label>
                         <input type="text" name="f8" class="form-control" placeholder="Enter UG course name">
    
                         <label for="yearofcompletion" class="form-label">Enter Year of completion of UG Course</label>
                         <input type="text" name="f9" class="form-control" placeholder="Enter year of completion">
    
                         <label for="uguniversity" class="form-label">Enter name of UG University</label>
                         <input type="text" name="f10" class="form-control" placeholder="Enter university name">
    
                         <label for="pg" class="form-label">Enter PG Course Name</label>
                         <input type="text" name="f11" class="form-control" placeholder="Enter PG course name">
    
                         <label for="yearofcompletion" class="form-label">Enter Year of completion of PG Course</label>
                         <input type="text" name="f12" class="form-control" placeholder="Enter year of completion">
    
                         <label for="pguniversity" class="form-label">Enter name of UG University</label>
                         <input type="text" name="f13" class="form-control" placeholder="Enter university name">

                         <label for="areaofres" class="form-label">Enter Area of Research interest</label>
                         <input type="text" name="f14" class="form-control" placeholder="Enter Area of Research interest">
    
                        <label for="Adhar" class="form-label">Enter Aadhar number</label>
                        <input type="text" name="f15" class="form-control" placeholder="Aadhar number">
   
                        <label for="pan" class="form-label">PAN</label>
                        <input type="text" class="form-control" name="f16" placeholder="PAN">

                        <label for="ijournal" class="form-label">Enter number of International journal</label>
                        <input type="text" class="form-control" name="f17" placeholder="Number of international journals">
    
                        <label for="njournal" class="form-label">Enter number of National journal</label>
                        <input type="text" class="form-control" name="f18" placeholder="Number of national journals">
    
                        <label for="vidwan" class="form-label">Enter Vidwan Id</label>
                        <input type="text" class="form-control" name="f19" placeholder="Enter your vidwan id">
    
                        <label for="orcid" class="form-label">Enter Orcid Id</label>
                        <input type="text" class="form-control" name="f20" placeholder="Enter your orcid id">
    
                        <label for="scopus" class="form-label">Enter Scopus Id</label>
                        <input type="text" class="form-control" name="f21" placeholder="Enter your scopus id">
    
                        <label for="google" class="form-label">Enter Google Scholar Id</label>
                        <input type="text" class="form-control" name="f22" placeholder="Enter your google scholar id">
    
                        <label for="webofscience" class="form-label">Enter Web of science Id</label>
                        <input type="text" class="form-control" name="f23"placeholder="Enter your web of science id">            
  
                        <button type="submit" class="btn btn-primary">Save</button>
                          
                      </form>
                   
              </div>
            </div>      
      </div>
</div>
</body>
</html>