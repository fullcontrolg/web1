<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2> Session - 생성 페이지 </h2>
<%
	session.setAttribute("id", "aaa");
	session.setAttribute("passwd", "111");
	
	//session.removeAttribute( "id" );
	//session.invalidate();
	session.setMaxInactiveInterval( 3 );
%>
<input type="button" value="확인" onclick="location='sessionView.jsp'">