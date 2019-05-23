<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.NamingException"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h2> JDBC - delete - 처리 페이지 </h2>
<%
	String id = request.getParameter( "id" );
	String passwd = request.getParameter( "passwd" );
%>
<%	
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
		
		
		
		String sql = "select * from dbtest where id=?";
		pstmt = con.prepareStatement( sql );
		pstmt.setString( 1, id );
		rs = pstmt.executeQuery();
		
		if( rs.next() ) {
			//아이디가 있다
			if( passwd.equals( rs.getString("passwd") ) ) {
				//비밀번호가 같다
				sql = "delete from dbtest where id=?";
				if( pstmt != null ) pstmt.close();
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1,id);
				int result = pstmt.executeUpdate();
				if( result == 0 ) {
					//탈퇴 실패
					%>
					회원 탈퇴에 실패했습니다. <br>
					잠시 후 다시 시도하세요. <br>
					<meta http-equiv="refresh" content="2; url=deleteTestForm.jsp">
					<%
				} else {
					//탈퇴 성공
					response.sendRedirect( "selectTest.jsp" );
				}
			} else {
				//비밀번호가 다르다
				%>
				입력하신 비밀번호가 다릅니다.<br>
				다시 확인하세요 <br>
				<meta http-equiv="refresh" content="2; url=deleteTestForm.jsp">
				<%
			}
		} else {
			//아이디가 없다	
			%>
			입력하신 아이디가 없습니다. <br>
			다시확인하세요 <br>
			<meta http-equiv="refresh" content="2; url=deleteTestForm.jsp">
		}
		pstmt.setString( 2, passwd );
		pstmt.setString( 3, name );
		pstmt.setString( 4, tel );
		
		int result = pstmt.executeUpdate();
		if( result == 0 ) {
			%>
			회원 가입에 실패했습니다. <br>
			잠시 후 다시 시도하세요. <br>
			<meta http-equiv="refresh" content="2; url=insertTestForm.jsp">
			<%
		} else {
			response.sendRedirect( "selectTest.jsp" );			
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

