<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>ch11:JSTL 예제-상품목록</h2>
<hr>
<form name="form1" method="post" action="ProductSel.jsp">
	<jsp:useBean id="product" class="web2021.study10.Product" scope="session"/>
	<select name="sel">
		<c:forEach items="${product.productList }" var="item">
			<option>${item }</option>
		</c:forEach>
	</select>
	<input type="submit" value="선택"/>
</form>
</div>
</body>
</html>