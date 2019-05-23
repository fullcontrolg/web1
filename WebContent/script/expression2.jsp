<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2> Script - expression 2</h2>

<table border="1">
	<tr>
		<%
		for( int i=2; i<10; i++ ) {
			%>
			<th><%=i%> 단</th>
			<%			
		}
		%>
	</tr>
	<%
		for( int i=1; i<10; i++ ) {			// 곱해지는 수
			%>
			<tr>
				<%
				for( int j=2; j<10; j++ ) {		// 단
					%>
					<td><%=j%> * <%=i%> = <%=i*j%></td>
					<%		
				}
				%>
			</tr>
			<%
			}
		%>
</table>








