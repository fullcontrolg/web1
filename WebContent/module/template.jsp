<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<h2> 템플릿 페이지 </h2>

<%
	request.setCharacterEncoding( "utf-8" );
%>
<%
	String name = request.getParameter( "paramName" );
	String control = request.getParameter( "paramControl" );
%>
<table border="1">
	<tr>
		<th colspan="2" height="100">
			<jsp:include page="top.jsp" flush="false"/>
		</th>
	</tr>
	<tr>
		<th valign="top" height="300" width="100">
			<br>
		</th>
		<jsp:include page='<%=control+"Left.jsp"%>' flush="false"/>
		<td valign="top" width="400">
			<br>
			<h3>&nbsp;&nbsp;<%=name%></h3>
			<br>
			&nbsp;&nbsp;<jsp:include page='<%=control+".jsp"%>' flush="false"/>
		</td>
	</tr>
	<tr>
		<th colspan="2" height="100">
			<jsp:include page="bottom.jsp" flush="false"/>
		</th>
	</tr>
</table>