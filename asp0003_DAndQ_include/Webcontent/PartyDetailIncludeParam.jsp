<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 상세 조회</title>
</head>
<body>
	<jsp:include page="PartyCommonIncludeParam.jsp" flush="false">
		<jsp:param value="readonly" name="usage"/>
	</jsp:include>
</body>
</html>