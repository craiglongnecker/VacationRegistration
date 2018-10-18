<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC From Handling</title>
</head>
<body>
	<h2>Vacation Registration Result</h2>
	<table>
		<tr>
			<td>ID</td>
			<td>${v.id}</td>
		</tr>
		<tr>
			<td>Vacation Spot</td>
			<td>${v.vacationSpot}</td>
		</tr>
		<tr>
			<td>Cost</td>
			<td>${v.cost}</td>
		</tr>
		<tr>
			<td>Reserved Date</td>
			<td>${v.reservedDate}</td>
		</tr>
		<tr>
			<td>Reserved</td>
			<td>${v.reserved}</td>
		</tr>
	</table>
	<a href="viewAll.mvc">View all Vacations</a>
</body>
</html>