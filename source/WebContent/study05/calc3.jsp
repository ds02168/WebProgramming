<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%!
	int num1, num2;
	String op = "";
	
	public int calculator() {
		switch(op){
		case"+":return num1 + num2;
		case"-":return num1 - num2;
		case"*":return num1 * num2;
		case"/":return num1 / num2;
		default:return 0;
		}
	}
%>

<%
	if(request.getMethod().equals("POST")){
		op = request.getParameter("operator");
		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>계산기</title>
</head>
<body>
<center>
<h3>계산기</h3>
<hr>
<form name="form1" method="post">
<input type="text" name="num1" width=200 size="5">
<select name="operator">
	<option selected>+</option>
	<option>-</option>
	<option>*</option>
	<option>/</option>
</select>
<input type="text" name="num2" width="200" size="5">
<input type="submit" value="계산" name="b1">
<input type="reset" value="다시입력" name="b2">
</form>

<hr>
계산결과 = <%= calculator() %>
</center>
</body>
</html>