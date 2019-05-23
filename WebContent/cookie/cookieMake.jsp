<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2> Cookie - 생성 페이지 </h2>

<%
	Cookie cookie1 = new Cookie( "id", "aaa");
	Cookie cookie2 = new Cookie( "passwd", "111");
	response.addCookie( cookie1 );
	response.addCookie( cookie2 );
	cookie1.setValue( "bbb" );
	response.addCookie( cookie1 );
%>
<input type="button" value="확인" onclick="location='cookieUse.jsp'">