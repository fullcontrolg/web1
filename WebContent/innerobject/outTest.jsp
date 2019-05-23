<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
	buffer="10kb"
    pageEncoding="UTF-8"%>

<h2> 내장객체 - out </h2>

<%
	int size = out.getBufferSize();
	int remain = out.getRemaining();	
%>
버퍼 크기 : <%=size%> <br>
남은 크기 : <%=remain%> <br>
사용 크기 : <%=size - remain%> <br>






