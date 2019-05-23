<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2> 액션태그 - forward - red </h2>

<%
	String name = URLDecoder.decode( request.getParameter( "paramName" ), "utf-8" );
%>

<body bgcolor="red">
	<%=name%>님 안녕하세요. <br>
	당신이 선택한 색상은 빨간색입니다. <br>
</body>