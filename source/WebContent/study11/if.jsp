<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#FFFFFF">

<h3>&lt;c:remove&gt;</h3>
<c:set value="user1" var="msg"/>
msg : ${msg }<br>

<c:if test="${msg == 'user1' }" var="result">
	test result : ${result }
</c:if>

</body>
</html>