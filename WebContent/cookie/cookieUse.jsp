<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2> Cookie - 확인 페이지 </h2>

<%
	Cookie cookies[] = request.getCookies();
	for( int i=0; i<cookies.length; i++ ) {
		%>
		이름 : <%=cookies[i].getName()%> <br>
		값 : <%=cookies[i].getValue()%> <br>
		<%
		
	}
%>