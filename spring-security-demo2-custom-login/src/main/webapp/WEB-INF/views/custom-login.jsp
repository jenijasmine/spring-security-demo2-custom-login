<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
.error {
color:red;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<h1>My custom form</h1>

	<form:form action="${pageContext.request.contextPath}/authenticateTheUser"  method="POST">
	
	<c:if test="${param.error != null}">
	<em class="error">Wrong credentials!!</em>
	</c:if>
		<p>
			Username: <input type="text" name="username" />
		</p>
		<p>
			Password: <input type="password" name="password" />
		</p>
		<button type="submit">Login</button>
	</form:form>

</body>
</html>