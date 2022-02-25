<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch06: twitter_list.jsp</title>
<%
	request.setCharacterEncoding("utf-8");
	String username = (String)request.getParameter("username");
	
	String sname = (String)session.getAttribute("login");
	
	if(sname == null || sname.isEmpty()){
		session.setAttribute("login",username);
	}

	
%>
</head>
<body>
<div align="center">
	<h2>My Simple Twitter!!</h2>
	<hr>
	<form name="form2" method="post" action="tweet.jsp">
		@<%= session.getAttribute("login") %>
		<input type="text" name="tweet">
		<input type="submit" value="Tweet">
	</form>
	<hr>
		<%
		ArrayList<String> tweets = (ArrayList<String>)application.getAttribute("tweets");
		if(tweets == null){
			
		}else{
			for(String t : tweets){
				out.println(t + "<br>");
			}
		}
	%>

</div>
</body>
</html>