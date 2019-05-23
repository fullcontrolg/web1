package study;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PersonServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name 
			= new String( req.getParameter( "name" ).getBytes("8859_1"), "utf-8" );
		int age = Integer.parseInt( req.getParameter( "age" ) );
		String gender = req.getParameter( "gender" );
		String hobby[] = req.getParameterValues( "hobby" );
				
		resp.setContentType( "text/html; charset=utf-8" );
		PrintWriter out = resp.getWriter();
		
		out.println( "<html>" );
		out.println(	"<head>" );
		out.println(		"<title> Servlet </title>" );
		out.println(	"</head>" );
		out.println(	"<body>" );
		out.println(		"<h2> Servlet 폼 데이터 처리 </h2>" );
		out.println(		"당신의 이름은 " + name + "이고 <br>" );
		out.println(		"나이는 " + age + "살 이고 <br>" );
		
		if( gender.equals( "1" ) ) {
			out.println(	"성별은 남자입니다. <br>" );
		} else {
			out.println(	"성별은 여자입니다. <br>" );
		}		
		
		out.println( "당신의 취미는 " );
		for( int i=0; i<hobby.length; i++ ) {
			switch( hobby[i] ) {
			case "1" : out.println( "축구" ); break;
			case "2" : out.println( "야구" ); break;
			case "3" : out.println( "농구" ); break;
			case "4" : out.println( "배구" ); break;
			}
		}		
		out.println( "입니다. <br>" );
		
		out.println(	"</body>" );
		out.println( "</html>" );		
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet( req, resp );
	}	
}









