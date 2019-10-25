<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="ISO-8859-1">
</head>
<body>
<h2 style="text-align: center;background-color: grey;color: black" >Thanks For Selecting the Options.</h2>  
<h3 style="text-align: center">Kindly Fill the Given Form</h3>
<div class="container" >
<form action="DbData" method="post" >
  <div class="form-group">
    <label>Name</label>
    <input type="text" class="form-control" name="name"  >
    <label>Post Title</label>
    <input type="text" class="form-control" name="posttitle"  >
    
  
  
    <label >City Or Locality</label>
    <input type="text" class="form-control" name="city">
    <label >Postal Code</label>
    <input type="number" class="form-control" name="postol code">
    <label>Description</label>
    <textarea class="form-control"  name="Description" rows="3" ></textarea>
    
    <hr>
    <h3 style="text-align: center">Contact Info</h3>
    <label >Email </label>
    <input type="text" class="form-control" name="email">
    <label >Contact Number</label>
    <input type="number" class="form-control" name="phone">
    
    
   
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
  
  <hr>
</form>
</div>
</body>
</html>