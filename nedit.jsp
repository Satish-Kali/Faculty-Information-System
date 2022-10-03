<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.dinf.helper.ConnectionProvider" %>
<%@ page import="com.dinf.entities.faculty" %>
<%@ page import="com.dinf.dao.facultydao" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Faculty Record</title>
</head>
<body>
<%@include file="base.jsp" %>
<%String fname=request.getParameter("fac_name");%>
<p>Editable faculty name is:<%=fname%></p>
<%facultydao fd=new facultydao(ConnectionProvider.getConnection());
faculty f=fd.getfacultybyname(fname);

%>
<div class="row justify-content-center">
    <div class="col-md-6">
      <div class="card">
  <div class="card-body">
    <h5 class="card-title text-center">Update Faculty Data</h5>
    <p class="card-text">
<form class="form-group" method="post" action="nregister">
    
    
    
    <input type="hidden" name="f1" class="form-control" value=<%=f.getName() %> placeholder="Enter your Name">

    <label for="Dept" class="form-label">Department Name</label>
    <input type="text" name="f2" class="form-control" value=<%=f.getDname() %> placeholder="Enter department Name">
    

    <label for="gender" class="form-label">Gender</label>
    <input type="text"  class="form-control" name="gender" value=<%=f.getGender()%>>
    <br>
    <label for="collegeid" class="form-label">College id</label>
    <input type="text" name="f4"class="form-control" placeholder="Enter College id" value=<%=f.getCollegeid()%>>
    
    <label for="email" class="form-label">Your Email</label>
    <input type="text" name="f5" class="form-control" placeholder="Enter your Email" value=<%=f.getEmail()%>>

    <label for="jdate" class="form-label">Your joining Date</label>
    <input type="date" name="f6" class="form-control" placeholder="Enter your joining date" value=<%=f.getJdate()%>>
    
    <label for="bdate" class="form-label">Your BirthDate</label>
    <input type="date" name="f7" class="form-control" placeholder="Enter your birthdate" value=<%=f.getBdate()%>>
    
    <label for="ug" class="form-label">UG </label>
    <input type="text" name="f8" class="form-control" placeholder="Enter UG course name" value=<%=f.getUgcourse() %>>
    
        <label for="yearofcompletion" class="form-label">Year of completion</label>
    <input type="text" name="f9" class="form-control" placeholder="Enter year of completion" value=<%=f.getUgyoc() %>>
    
    <label for="uguniversity" class="form-label">University</label>
    <input type="text" name="f10" class="form-control" placeholder="Enter university name" value=<%=f.getUguniversity() %>>
    
        <label for="pg" class="form-label">PG</label>
    <input type="text" name="f11" class="form-control" placeholder="Enter PG course name" value=<%=f.getPgcourse() %>>
    
        <label for="yearofcompletion" class="form-label">Year of completion</label>
    <input type="text" name="f12" class="form-control" placeholder="Enter year of completion" value=<%=f.getPgyoc() %>>
    
    <label for="pguniversity" class="form-label">University</label>
    <input type="text" name="f13" class="form-control" placeholder="Enter university name" value=<%=f.getPguniversity() %>>

    
        <label for="areaofres" class="form-label">Area of Research interest</label>
    <input type="text" name="f14" class="form-control" placeholder="Enter Area of Research interest" value=<%=f.getAreaofresearch() %>>
    
        <label for="Adhar" class="form-label">Aadhar number</label>
    <input type="text" name="f15" class="form-control" placeholder="Aadhar number" value=<%=f.getAadhar() %>>
   
        <label for="pan" class="form-label">PAN</label>
    <input type="text" class="form-control" name="f16" placeholder="PAN" value=<%=f.getPan() %>>

    
    <label for="ijournal" class="form-label">International journal</label>
    <input type="text" class="form-control" name="f17" placeholder="Number of international journals" value=<%=f.getIjpub() %>>
    
    <label for="njournal" class="form-label">National journal</label>
    <input type="text" class="form-control" name="f18" placeholder="Number of national journals" value=<%=f.getNjpub() %>>
    
    <label for="vidwan" class="form-label">Vidwan Id</label>
    <input type="text" class="form-control" name="f19" placeholder="Enter your vidwan id" value=<%=f.getVid() %>>
    
    <label for="orcid" class="form-label">Orcid Id</label>
    <input type="text" class="form-control" name="f20" placeholder="Enter your orcid id" value=<%=f.getOid() %>>
    
        <label for="scopus" class="form-label">Scopus Id</label>
    <input type="text" class="form-control" name="f21" placeholder="Enter your scopus id" value=<%=f.getSid() %>>
    
    <label for="google" class="form-label">Google Scholar Id</label>
    <input type="text" class="form-control" name="f22" placeholder="Enter your google scholar id" value=<%=f.getGid() %>>
    
    <label for="webofscience" class="form-label">Web of science Id</label>
    <input type="text" class="form-control" name="f23"placeholder="Enter your web of science id" value=<%=f.getWid() %>>            
    


    <label for="password">Enter Your Password: </label>
    <input type="password" name="f24" class="form-control" placeholder="Your Password" value=<%=f.getPwd() %>>
    
    
    
    <button type="submit" class="btn btn-primary">Save</button>
    </form>
    
  </div>
</div>
    </div>
</div>

</body>
</html>