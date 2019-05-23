<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2> 내장객체 - 내장 객체 영역 - 생성 페이지 </h2>

<%
	request.setAttribute( "id", "aaa" );
	session.setAttribute( "id", "bbb" );
	application.setAttribute( "id", "ccc" );
%>

<input type="button" value="확인" 
	onclick="javascript:window.location='getAttribute.jsp'"> 











