<%@ tag body-content="scriptless" pageEncoding="utf-8"%>

<%@ attribute name="border" %>
<%@ attribute name="bgcolor" %>

<jsp:useBean id="product" class="web2021.study10.Product"/>

<h2><jsp:doBody/></h2>
<table border="${border }" bgcolor="${bgcolor }" width="150">
<%
	for(String item : product.getProductList()){
		out.println("<tr><td>"+item+"</td></tr>");
	}
%>
</table>