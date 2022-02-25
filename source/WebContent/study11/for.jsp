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
<c:forEach var="i" items="${members }" begin="0" varStatus="status" end="5">
	index: ${status.index }/
	count: ${status.count }<br>
	name: ${i.name }<br>
	email: ${i.email }<br>
	<hr>
</c:forEach>

<c:forTokens items="홍길동,010-1234-5678,대구" delims="," var="sel">
	${sel }<br>
</c:forTokens>
</body>
</html>