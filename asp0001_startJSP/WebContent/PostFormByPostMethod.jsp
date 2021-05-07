<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- get : 좋은점(한글 인코딩이 자동으로 처리가 되어있음) 단점(길이가 제한) -->
<!-- post : 좋은점(길이 제한이 없다) 단점(인코딩을 해줘야함) -->
<form action="ProcessRequest.jsp" method="post">
	<input type="text" name="name"><br>
	<input type="text" name="addr"><br>
	<input type="checkbox" name="pet" value="dog"> 강아지
	<input type="checkbox" name="pet" value="cat"> 고양이
	<input type="checkbox" name="pet" value="pig"> 돼지	
	<input type="submit" value="전송">
</form>
</body>
</html>