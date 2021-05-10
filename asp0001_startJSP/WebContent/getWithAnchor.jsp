<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- get : 좋은점(한글 인코딩이 자동으로 처리가 되어있음) 단점(길이가 제한, 보안성이 안좋음) -->
<!-- form 을 사용하지않아도 전송 가능 -->
<a href='ProcessRequest.jsp?name=${"홍길동"}&addr=한양&pet=dog &pet=cat'>보내기</a><br>

<!-- 내 현재 위치 ( EL(Expression Language) 사용 ) -->
<!-- 사용함으로 써 상대 경로 즉, 내 위치에 따라 값이 변하던 게 고정이 된다. -->
<a href='${pageContext.request.contextPath}/aaa/ccc/aaa.jsp'>aaa</a><br>
<a href='${pageContext.request.contextPath}/bbb/ddd/ddd.jsp'>ddd</a><br>
<%
out.print("홍길동");
%>
</body>
</html>