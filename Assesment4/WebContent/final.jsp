<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border ="1" style="background-color: black; color: white">
		<thead>
			<td> Name</td>
			<td> Phone</td>
			<td> Email</td>
			<td> City</td>
			<td> Description</td>
			<td>Postal</td>
			
		</thead>
		<c:forEach var="book" items="${Userlist}">
			<tr>
				<td>${book.name}</td>
				<td>${book.phone}</td>
				<td>${book.email}</td>
				<td>${book.city}</td>
				<td>${book.desc}</td>
				<td>${book.postal}</td>
			</tr>

		</c:forEach>
	</table>
</body>
</html>