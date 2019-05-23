<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2> 내장객체 - application </h2>

<%
	String path = application.getRealPath( "/" );
	String info = application.getServerInfo();
	int major = application.getMajorVersion();
	int minor = application.getMinorVersion();
%>

서버 경로 : <%=path%> <br>
서버 정보 : <%=info%> <br>
서버 버전 : <%=major%>.<%=minor%> <br>
<br><br>

<%
	Enumeration<String> e = application.getInitParameterNames();
	while( e.hasMoreElements() ) {
		String name = e.nextElement();
		String value = application.getInitParameter( name );
		%>
		키 : <%=name%> <br>
		값 : <%=value%> <br>
		<%		
	}
%>




















