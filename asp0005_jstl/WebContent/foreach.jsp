<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.HashMap, java.util.Map, java.util.Calendar"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	Map<String, Object> mapDt = new HashMap<>();
	mapDt.put("name", "홍길동");
	mapDt.put("주소", "한양");
	mapDt.put("age", 22);
	mapDt.put("날짜", Calendar.getInstance());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:set var="intArr" value="<%= new int[]{1, 2, 3, 4, 5, 6, 7} %>"/>
<c:set var="map" value="<%=mapDt %>"/>

<title>Insert title here</title>
</head>
<body>
<h4>foreach begin end로 합산구하기 </h4>
<c:set var="sum" value="0"/>
<c:forEach begin="22" end="55" step="3" var="i">
	<c:set var="sum" value="${sum + i}"/>
</c:forEach>  
${sum }
<h4> 4단 만들기</h4>
<ul>
<c:forEach begin="1" end="9" var="i">
	<li>4 * ${i} = ${4 * i }</li>
</c:forEach>
</ul>

<!-- table row Heading col Heading  -->
<h4> 2~9단까지 구구단 출력하기 (리스트버전)</h4>
<ul>
<c:forEach begin="2" end="9" var="row">
	<c:forEach begin="1" end="9" var="col">
		<li>${row} * ${col} = ${row * col }</li>
	</c:forEach>
	<br>
</c:forEach>
</ul>

<h4> 2~9단까지 구구단 출력하기(테이블 버전)</h4>
<table border="1">
<tr>
	<th>		 
	</th>
	<c:forEach begin="1" end="9" var="row">
		<th>
			${row}
		</th>
	</c:forEach>
</tr>

<c:forEach begin="1" end="9" var="row">
	<tr>
		<td>
			${row}
		</td>
		<c:forEach begin="1" end="9" var="col">
			<td>
				${row * col}		 	
			</td>
		</c:forEach>
		<br>
	</tr>	
</c:forEach>
</table> 
<br><br><br><br>

<!--  교수님 방식으로 -->
<table border = "1">
<c:forEach begin="1" end="9" var="row">
	<tr>
	<c:forEach begin="0" end="9" var="col">
		<c:if test = "${ row == 1 && col == 0}">
			<th>구구단</th>
		</c:if>
		<c:if test = "${ row == 1 && col != 0}">
			<th>${col }</th>
		</c:if>
		<c:if test = "${row != 1 && col == 0}">
			<th>${row }</th>
		</c:if>
		<c:if test = "${row != 1 && col != 0}">
			<td>${row * col }</td>
		</c:if>
	</c:forEach>
	</tr>
</c:forEach>
</table>

<c:forEach items="${intArr}" var="ele" begin="2" end="5" step="2" varStatus="st">
	${st.index}...${st.count}....[${ele}]<br>
</c:forEach>

<h4>Map 들어 있는 값들</h4>
<c:forEach var="ele" items="${map}">
	${ele.key} = ${ele.value} <br>
</c:forEach>
</body>
</html>