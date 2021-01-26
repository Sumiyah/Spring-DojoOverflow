<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
<script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Questions Dashboard</title>
</head>
<body>
	<div class="container">
		<h1>What is your question</h1>
		<form:form action="/" method="post" modelAttribute="newQuest">
			 <div class="form-group">
		        <form:label path="question">Question</form:label>
		        <form:errors path="question"/>
		        <form:textarea class="form-control" path="question"></form:textarea>
		    </div>
		    <div class="form-group">
		        <form:label path="tags">Tags</form:label>
		        <form:errors path="tags"/>
		        <form:input class="form-control" path="tags"/>
		    </div>
		    <button>Submit</button>
		</form:form>
	</div>
</body>
</html>