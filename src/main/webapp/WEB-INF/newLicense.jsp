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
<title>New License</title>
</head>
<body>	
	<div class = "container">
		<h5 class="mt-3">New License</h5>
    		<form:form action="/licenses/new" method="post" modelAttribute="newLicense">
	      		<p>
	      			<form:label path="number" class="form-label">Number:</form:label>
		      		<form:errors path="number" class="text-danger" />
		      		<form:input path="number" class="form-control"/>
	      		</p>
	      		<p>
	      			<form:label path="person" class="form-label">Person:</form:label>
		      		<form:errors path="person" class="text-danger" />
		      		<form:select path="person" class="form-control">
		      			<c:forEach items="${allPersons}" var="person"> 
			      			<form:option value="${person.id}"/> <c:out value="${person.firstName}"/> <c:out value="${person.lastName}"/> />
		      			</c:forEach>
		      		</form:select>
	      		</p>
	      		<p>
	      			<form:label path="state" class="form-label">State:</form:label>
		      		<form:errors path="state" class="text-danger" />
		      		<form:input path="state" class="form-control"/>
	      		</p>
	      		<p>
	      			<form:label path="expirationDate" class="form-label">Expiration Date:</form:label>
		      		<form:errors path="expirationDate" class="text-danger" />
		      		<form:input path="expirationDate" class="form-control" type="date"/>
	      		</p>
	      		<div class="d-flex justify-content-end">
		    		<input type="submit" value="Create" class="btn btn-sm btn-primary mt-3" />
	      		</div>
    		</form:form>
	</div>
</body>
</html>