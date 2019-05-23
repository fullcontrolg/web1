<%@ page language="java" 
		contentType="text/html; charset=UTF-8"
		session="true"
		buffer="10kb"
		autoFlush="true"
		isThreadSafe="true"		
    	pageEncoding="UTF-8" %>

<h2> Directive - page </h2>
<%
	int a=5, b=2;
%>
a + b = <%out.println( 5 + 2 );%> <br>
a - b = <%out.println( 5 - 2 );%> <br>
a * b = <%out.println( 5 * 2 );%> <br>
a / b = <%out.println( 5 / 2 );%> <br>



