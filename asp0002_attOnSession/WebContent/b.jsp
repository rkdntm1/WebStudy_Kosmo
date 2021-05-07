<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Object isOk = session.getAttribute("isOk");
	if (isOk == null) {
		response.sendRedirect("a.jsp");
	}
	out.print(isOk);
	%>
</body>
</html>