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
    <form class="form-group" method="post" action="update">
    
    
    <label for="name" class="form-label">Name</label>
    <input type="text" name="af1" class="form-control" value=<%=f.getName() %> placeholder="Enter your Name">

    <label for="Dept" class="form-label">Department Name</label>
    <input type="text" name="af2" class="form-control" value=<%=f.getDname() %> placeholder="Enter department Name">
    

    <label for="gender" class="form-label">Gender</label>
    <input type="text"  class="form-control" value=<%=f.getGender()%> name="gender" value="male">
    <br>
    <label for="collegeid" class="form-label">College id</label>
    <input type="text" name="af4"class="form-control" value=<%=f.getCollegeid()%> placeholder="Enter College id">
    
    <label for="email" class="form-label">Your Email</label>
    <input type="text" name="af5" class="form-control" value=<%=f.getEmail()%> placeholder="Enter your Email">

    <label for="jdate" class="form-label">Your joining Date</label>
    <input type="date" name="af6" class="form-control" value=<%=f.getJdate()%> placeholder="Enter your joining date">
    
    <label for="bdate" class="form-label">Your BirthDate</label>
    <input type="date" name="af7" class="form-control" value=<%=f.getBdate() %> placeholder="Enter your birthdate">
    
    <label for="ug" class="form-label">UG </label>
    <input type="text" name="af8" class="form-control" value=<%=f.getUgcourse() %> placeholder="Enter UG course name">
    
        <label for="yearofcompletion" class="form-label">Year of completion</label>
    <input type="text" name="af9" class="form-control" value=<%=f.getUgyoc() %> placeholder="Enter year of completion">
    
    <label for="uguniversity" class="form-label">University</label>
    <input type="text" name="af10" class="form-control" value=<%=f.getUguniversity() %> placeholder="Enter university name">
    
        <label for="pg" class="form-label">PG</label>
    <input type="text" name="af11" class="form-control" value=<%=f.getPgcourse() %> placeholder="Enter PG course name">
    
        <label for="yearofcompletion" class="form-label">Year of completion</label>
    <input type="text" name="af12" class="form-control" value=<%=f.getPgyoc() %> placeholder="Enter year of completion">
    
    <label for="pguniversity" class="form-label">University</label>
    <input type="text" name="af13" class="form-control" value=<%=f.getPguniversity() %> placeholder="Enter university name">

    
        <label for="areaofres" class="form-label">Area of Research interest</label>
    <input type="text" name="af14" class="form-control" value=<%=f.getAreaofresearch() %> placeholder="Enter Area of Research interest">
    
        <label for="Adhar" class="form-label">Aadhar number</label>
    <input type="text" name="af15" class="form-control" value=<%=f.getAadhar() %> placeholder="Aadhar number">
   
        <label for="pan" class="form-label">PAN</label>
    <input type="text" class="form-control" name="af16" value=<%=f.getPan() %> placeholder="PAN">

    
    <label for="ijournal" class="form-label">International journal</label>
    <input type="text" class="form-control" name="af17" value=<%=f.getIjpub() %> placeholder="Number of international journals">
    
    <label for="njournal" class="form-label">National journal</label>
    <input type="text" class="form-control" name="af18" value=<%=f.getNjpub() %> placeholder="Number of national journals">
    
    <label for="vidwan" class="form-label">Vidwan Id</label>
    <input type="text" class="form-control" name="af19" value=<%=f.getVid() %> placeholder="Enter your vidwan id">
    
    <label for="orcid" class="form-label">Orcid Id</label>
    <input type="text" class="form-control" name="af20" value=<%=f.getOid() %> placeholder="Enter your orcid id">
    
        <label for="scopus" class="form-label">Scopus Id</label>
    <input type="text" class="form-control" name="af21" value=<%=f.getSid() %> placeholder="Enter your scopus id">
    
    <label for="google" class="form-label">Google Scholar Id</label>
    <input type="text" class="form-control" name="af22" value=<%=f.getGid() %> placeholder="Enter your google scholar id">
    
    <label for="webofscience" class="form-label">Web of science Id</label>
    <input type="text" class="form-control" name="af23" value=<%=f.getWid() %> placeholder="Enter your web of science id">            
    
    <label for="password">Enter Your Password: </label>
    <input type="password" name="af24" class="form-control" value=<%=f.getPwd() %> placeholder="Your Password">
    
    <button type="submit" class="btn btn-primary">Update</button>
    </form>
    
    
  </div>
</div>
    </div>
</div>

</body>
</html>