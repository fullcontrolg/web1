<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<head>
	<style type="text/css">
	table{
		
	}
	th {
		width:2em;
		height:2em ;
		align:center;
		font-weight:bold;
		border:1px solid #aaa;
		
	}
	</style>
</head>
<% 
	int level = 5;
	int line = level*2+1;
	int num = 0;
	%><table ><%
					for( int i=-level; i<=level; i++ ) {
					%><tr><%
								for( int j=-level; j<=level; j++ ) {
								%><th><%
											if( Math.abs(i) + Math.abs(j) <= level ) {
												num++;
												%><%=num%><%
											}
								%></th><%
								}
					%></tr><%
					}
	%></table><%
%>