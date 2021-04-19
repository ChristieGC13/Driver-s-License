<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/app.js"></script>
<link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="UTF-8">
<title>New Person</title>
</head>
<body>	
	<div class = "container">
		<h5 class="mt-3">New Person</h5>
    		<form:form action="/persons/new" method="post" modelAttribute="newPerson">
	      		<p>
	      			<form:label path="firstName" class="form-label">First Name:</form:label>
		      		<form:errors path="firstName" class="text-danger" />
		      		<form:input path="firstName" class="form-control"/>
	      		</p>
	      		<p>
	      			<form:label path="lastName" class="form-label">Last Name:</form:label>
		      		<form:errors path="lastName" class="text-danger" />
		      		<form:input path="lastName" class="form-control"/>
	      		</p>
	      		<div class="d-flex justify-content-end">
		    		<input type="submit" value="Create" class="btn btn-sm btn-primary mt-3" />
	      		</div>
    		</form:form>
	</div>
</body>
</html>