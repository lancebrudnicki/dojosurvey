<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results</title>
</head>
<body>
	<h1 style="text-decoration: underline;">Submitted Info</h1>
	<p>Name:					<c:out value="${name}"/> </p>
	<p>Dojo Location:			<c:out value="${location}"/></p>
	<p>Favorite Language:		<c:out value="${favorite}"/></p>
	<p>Comment:					<c:out value="${comment}"/></p>
	<button><a href="http://localhost:8080/">Go Back</a></button>
</body>
</html>