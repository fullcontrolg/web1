<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2> 내장객체 - response - 1 </h2>

현재 페이지는 리다이렉트 되기 전 페이지 responseTest1.jsp 입니다. <br>

<%
	response.sendRedirect( "responseTest2.jsp" );
%>