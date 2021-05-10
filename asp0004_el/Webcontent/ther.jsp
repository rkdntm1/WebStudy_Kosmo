<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ch11.Ther" %>
<%
Ther ther = new Ther();
request.setAttribute("t", ther); //request객체에는 map이 있음
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${Ther.getInfo()}
	<!-- 속성 이름을 바탕으로 get붙이고 첫 글자를 대문자로 하는 함수getName()를 찾아 부르고 이곳에서 출력  -->
	${t.name}  
</body>
</html>