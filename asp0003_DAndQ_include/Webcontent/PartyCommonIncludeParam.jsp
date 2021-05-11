<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String usage = request.getParameter("usage");
%>
<p>
	이름 : <input id="name" type="text" value="홍길동" <%=usage %>>
</p>
<p>
	주소 : <input id="addr" type="text" value="한양" <%=usage %>>
</p>

