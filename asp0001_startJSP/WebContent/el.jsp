<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, java.util.ArrayList"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int intA = Integer.parseInt(request.getParameter("a"));	
	int intB = Integer.parseInt(request.getParameter("b"));
	//redirection(a page를 요청하였으나 b page로 반응 할거야), forward
	request.setAttribute("hi", 33); // Map
%>
<!-- Expression-->
 a * b = <%= intA * intB %> <br>

<!-- EL(Expression language) JSTL-->
a * b = ${param.a * param.b } <br>
<%= request.getAttribute("hi")%><br>
${hi}
</body>
</html>