<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 정보</title>
</head>
<body>
<h2>로그인 정보 출력 - JSP</h2>
<% request.setCharacterEncoding("UTF-8"); %>
<p>로그인 id: <%= request.getParameter("login") %></p>
<p>패스워드: <%= request.getParameter("password") %></p>
</body>
</html>