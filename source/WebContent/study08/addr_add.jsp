<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="abook" scope="request" class="web2021.study08.AddrBook"/>
<jsp:setProperty property="*" name="abook"/>

<jsp:useBean id="manager" class="web2021.study08.ABManager"/>
<% manager.add(abook); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록 내용</title>
</head>
<body>
<div align="center">
	<h2>등록 내용</h2>
	<p>
	이름 : <%= abook.getName() %><br>
	전화번호 : <%= abook.getPhone() %><br>
	이메일 : <jsp:getProperty name="abook" property="email"/><br>
	성별 : <jsp:getProperty name="abook" property="gender"/><br>
	<hr>
	<a href="addr_list.jsp">목록 보기</a>
</div>
</body>
</html>