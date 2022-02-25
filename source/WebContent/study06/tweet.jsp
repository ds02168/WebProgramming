<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>

<%
	request.setCharacterEncoding("utf-8");
	ArrayList<String> plist = (ArrayList<String>)application.getAttribute("tweets");
	
	if(plist == null){
		plist = new ArrayList<String>();
		application.setAttribute("tweets",plist);
	}
	
	if(!request.getParameter("tweet").isEmpty()){
		String tweet = "● " + session.getAttribute("login") + " :: " + request.getParameter("tweet")
		+ " , " + new Date();
		plist.add(tweet);
	}
	
	response.sendRedirect("twitter_list.jsp");
%>