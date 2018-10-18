<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC Form Handling</title>
</head>
<body>
<h2>Vacation Registration Form</h2>
<mvc:form modelAttribute="vacation" action="result.mvc">
	<table>
	    <tr>
	        <td><mvc:label path="vacationSpot">Vacation Location</mvc:label></td>
	        <td><mvc:input path="vacationSpot" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="cost">Cost</mvc:label></td>
	        <td><mvc:input path="cost" /></td>
	    </tr>
		<tr>
            <td><mvc:label path="reservedDate">Reserved Date</mvc:label></td>
            <td><mvc:input path="reservedDate" /></td>
        </tr>
        <tr>
            <td><mvc:label path="reserved">Reserved</mvc:label></td>
            <td><mvc:checkbox path="reserved" /></td>
        </tr>
        <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
<a href = "viewAll.mvc">View all Vacations</a>
</body>
</html>