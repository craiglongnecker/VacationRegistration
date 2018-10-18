<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Vacations</title>
</head>
<body>
	<c:forEach items="${all}" var="item">
		<table>
			<tr>
				<td>Vacation Spot</td>
				<td>${item.vacationSpot}</td>
			</tr>
			<tr>
				<td>Cost</td>
				<td>${item.cost}</td>
			</tr>
			<tr>
				<td>Reserved Date</td>
				<td>${item.reservedDate}</td>
			</tr>
			<tr>
				<td>Reserved</td>
				<td>${item.reserved}</td>
			</tr>


		</table>
		<br />
		<hr style="text-align: left; margin-left: 0; width: 25%">
		<br />
	</c:forEach>
	<a href="form.mvc">Add a new Vacation</a>
</body>
</html>