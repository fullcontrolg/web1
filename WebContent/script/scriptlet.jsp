<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2> Script - scriptlet </h2>

<%
	int a = 8;
	if( a > 5 ) {
		// out.println( "크다" );
		%>
		<%=a%> 크다 <br>
		<%
	} else {
		// out.println( "작다" );
		%>
		<%=a%> 작다 <br>
		<%
	}
%>







