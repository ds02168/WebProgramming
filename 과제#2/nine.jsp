<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
<%! public int result(int row,int col){
		return row*col;
	}
%>


<div align="center">
<h2>구구단</h2>
<table border="1">
	<%
		for(int j=1;j<10;j++){
			out.println("<tr>");
			for(int i=2;i<10;i++){
				out.println("<td>");
				out.println(i + " * " + j + " = " + result(j,i));
				out.println("</td>");
			}
			out.println("</tr>");
		}
	%>
</table>
</div>
</body>
</html>