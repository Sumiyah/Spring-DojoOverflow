<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
		<h1>Questions Dashboard</h1>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Question</th>
					<th>Tags</th>
				</tr>
			</thead>
			<c:forEach items="${ questions }" var="question">
				<tr>
					<td><a href="/${ question.id }">${ question.question}</a></td>
					<td>
					<c:forEach items="${ question.tags }" var="tag">
						<span>${ tag.subject }<c:if test="${ question.tags.indexOf(tag) != question.tags.size() - 1 }">, </c:if></span>
					</c:forEach>
					</td>
				</tr>
			</c:forEach>
		</table>
		<a href="/new">New Question</a>
	</div>
</body>
</html>