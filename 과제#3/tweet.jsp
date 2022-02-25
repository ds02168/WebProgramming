<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>

    
<%
	request.setCharacterEncoding("utf-8");
	ArrayList<String> plist = (ArrayList<String>)application.getAttribute("tweets");
	
	if(plist == null){
		plist = new ArrayList<String>();
		application.setAttribute("tweets",plist);
	}
	
	//트윗할 내용을 있을때만 저장
	if(!request.getParameter("tweet").isEmpty()){ 
		String tweet = "● " + session.getAttribute("login") + " :: " + request.getParameter("tweet")
			+ " , " + new Date();
		plist.add(tweet);
	}
	
	//twitter_list.jsp로 이동
	response.sendRedirect("twitter_list.jsp");
%>
