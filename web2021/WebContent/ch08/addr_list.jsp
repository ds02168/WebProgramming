<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="web2021.ch08.*"%>

<jsp:useBean id="manager" class="web2021.ch08.ABManager"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록</title>
</head>
<body>
<div align="center">
<h2>주소록</h2>
<hr>
<a href="addr_from.html">주소록 추가</a>
<p>
<table border="1">
	<tr>
		<th>이름</th>
		<th>전화번호</th>
		<th>이메일</th>
		<th>성별</th>
	</tr>
<%
	for(AddrBook record : manager.getList()){
%>
	<tr>
		<td><%=record.getName() %></td>
		<td><%=record.getPhone() %></td>
		<td><%=record.getEmail() %></td>
		<td algin="center"><%=record.getGender() %></td>
	</tr>
<%
	}
%>	
</table>


</div>
</body>
</html>