<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>

<%@page import="org.apache.catalina.Manager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.sun.corba.se.spi.orbutil.fsm.Guard.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2> JDBC - update - 수정페이지 </h2>

<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try {
		/*
		Class.forName( "oracle.jdbc.driver.OracleDriver" );
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbId = "encore";
		String dbPasswd = "encore";
		con = DriverManager.getConnection( url, dbId, dbPasswd );
		*/
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup( "java:comp/env" );
		DataSource ds = (DataSource) envCtx.lookup( "jdbc/encore" );
		con = ds.getConnection();	
		
		String sql = "select * form dbtest where id=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		if( rs.next() ) {
			//아이디 있다
			if( passwd.equals( rs.getString( "passwd" ) ) ) {
				//				비밀번호가 같다	
				%>
					<form method="post" action="updateTest.jsp">
					<input type="hidden" name="id" value="<%=id %>">
						<table border="1">
							<tr>
								<th> 아이디 </th>
								<td> <%=rs.getString("id") %> </td>
							</tr>
							<tr>
								<th> 비밀번호 </th>
								<td>
									<input type="password" name="password" maxlength="30"
										value="<%=rs.getString( "passwd" ) %>">
								</td>
							</tr>
							<tr>
								<th> 이름 </th>
								<td> <%=rs.getString( "name" )%> </td>
							</tr>
							<tr>
								<th> 전화번호 </th>
								<td>
									<input type="text" name="tel" maxlength="20"
										value="<%=rs.getString( "tel" ) %>">
								</td>
							</tr>
							<tr>
								<th colspan="2">
									<input type="submit" value="수정">
									<input type="reset" value="취소">
								</th>
							</tr>
						</table>
					</form>
				<%
			} else {
			//				비밀번호가 다르다				안내멘트 띄우고 이전페이지로
			%>
			비밀번호가 다릅니다.
			잠시후 다시 시도해 주세요.
			<meta http-equiv="refresh" content="2; url=deleteTestForm.jsp">
			<%
			}
		} else {
			//아이디 없다								안내멘트 띄우고 이전페이지로
			%>
			아이디가 없습니다.
			잠시후 다시 시도해 주세요.
			<meta http-equiv="refresh" content="2; url=deleteTestForm.jsp">
			<%
		}
		
	
	
			
	
	
	} catch( NamingException e ) {
		e.printStackTrace();
	} catch( SQLException e ) {
		e.printStackTrace();
	} finally {
		try {
			if( rs != null ) rs.close();
			if( pstmt != null ) pstmt.close();
			if( con != null ) con.close();
		} catch( SQLException e ) {
			e.printStackTrace();
		}
	}
%>


