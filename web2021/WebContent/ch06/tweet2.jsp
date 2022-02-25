<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
    
<%
	request.setCharacterEncoding("utf-8");
	ArrayList<String> plist = (ArrayList<String>)application.getAttribute("tweets");
	
	if(plist == null){
		plist = new ArrayList<String>();
		application.setAttribute("tweets",plist);
	}
	

	String tweet = "● " + session.getAttribute("login") + " :: " + request.getParameter("tweet")
		+ " , " + new Date();
	plist.add(tweet);

	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>tweet.jsp</title>
</head>
<body>
	<%
		ArrayList<String> tweets = (ArrayList<String>)application.getAttribute("tweets");
		if(tweets == null){
			
		}else{
			for(String t : tweets){
				out.println(t + "<br>");
			}
		}
		
		response.sendRedirect("twitter_list.jsp");
	%>
</body>
</html>