package study;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse resp) 
		throws IOException, ServletException {
		resp.setContentType( "text/html; charset=utf-8" );
		java.io.PrintWriter out = resp.getWriter();

		out.println( "<html>" );
		out.println(	"<head>" );
		out.println(		"<title>Indexpage</title>" );
		out.println(	"</head>" );
		out.println(	"<body>" );
		out.println(		"Hello Servlet!!! <br>" );
		out.println(		"안녕하세요<br>" );
		out.println(	"</body>" );
		out.println( "</html>" );

	}
	public void doPost(HttpServletRequest req, HttpServletResponse resp) 
		throws IOException, ServletException {
		doGet( req, resp );
	}
}
