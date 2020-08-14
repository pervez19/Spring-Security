<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %><html> 

<html>

<head>
	<title>luv2code Company Home Page</title>
</head>

<body>
	<h2>luv2code Company Home Page</h2>
	<hr>
	
	Welcome to the luv2code company home page!<br><br>
	
	<hr>
	<security:authorize access="hasRole('MANAGER')" >
		<a href="${pageContext.request.contextPath}/leaders">Manager</a>
		only for manager
	<hr>
	</security:authorize>
		<br>
	<security:authorize access="hasRole('ADMIN')" >
		<a href="${pageContext.request.contextPath}/systems">admin</a>
		only for Admin
	<hr>
	</security:authorize>	
		
	<form:form action="${pageContext.request.contextPath}/logout" method="POST">

		<input type="submit" value="Logout"/>
	
	</form:form>




</body>

</html>