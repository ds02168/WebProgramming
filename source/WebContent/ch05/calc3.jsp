<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%!
	int num1, num2;
	String op = "";
	
	public int calculator() {
		switch (op) {
		case "+" :	return num1 + num2;
		case "-" : 	return num1 - num2;
		case "*" :	return num1 * num2;
		case "/" :	return num1 / num2;
		default	: return 0;
		}
	}
%>

<%
	if (request.getMethod().equals("POST")) {
		op = request.getParameter("operator");
		num1 = Integer.parseInt(request.getParameter("num1"));
		num2 = Integer.parseInt(request.getParameter("num2"));
	}
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<TITLE>계산기</TITLE>
</HEAD>

<BODY>
<CENTER>
<H3>계산기</H3>
<HR>

<form name=form1 method=post>
<INPUT TYPE="text" NAME="num1" width=200 size="5">
<SELECT NAME="operator"> 
	<option selected>+</option>
	<option>-</option>
	<option>*</option>
	<option>/</option>
</SELECT>
<INPUT TYPE="text" NAME="num2" width=200 size="5"> 
<input type="submit" value="계산" name="B1"> 
<input type="reset" value="다시입력" name="B2">
</form>
<hr>

계산결과 = <%=calculator() %>
</CENTER>
</BODY>
</html>