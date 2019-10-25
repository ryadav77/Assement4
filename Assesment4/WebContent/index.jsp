<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="ISO-8859-1">
<title>Advertisement Categories</title>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

</head>
<body>
	<div class="conatiner" style="background-color: grey; color: black">
		<form action="FetchData" method="post">
			<h3 style="text-align: center">Select Your Choice from the
				following Categories</h3>
            <hr>
            
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value='Job Offered' name="answer">
				<label class="form-check-label">Job offered
					 </label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value='Gig Offered' name="answer"><label
					class="form-check-label">Gig Offered
					 </label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value='Job Wanted' name="answer"><label
					class="form-check-label">Job Wanted
					 </label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value='House Offered' name="answer"><label
					class="form-check-label">House Offered
					 </label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value='House Wanted' name="answer">
				<label class="form-check-label">House Wanted
					 </label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value='Sale by owner' name="answer"><label
					class="form-check-label">For Sale By Owner
					 </label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value='Sale by dealer' name="answer"><label
					class="form-check-label">For Sale by Dealer
					 </label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value='Wanted by owner' name="answer"><label
					class="form-check-label">Wanted By Owner
					 </label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value='Wanted by Dealer' name="answer">
				<label class="form-check-label">Wanted By Dealer
					 </label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value='Services' name="answer"><label
					class="form-check-label">Services
					 </label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value='Community' name="answer"><label
					class="form-check-label">Community
					 </label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value='Events' name="answer"><label
					class="form-check-label">Events
					 </label>
			</div>
			<div class="card-footer" style="margin-left: 0px; padding-left: 0px;">
				
				<input type="submit" class="btn btn-primary" value="Continue" name="btn" />
			</div>


		</form>
	</div>
</body>
</html>