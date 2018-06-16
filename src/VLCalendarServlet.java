import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class VLCalendarServlet extends HttpServlet
{
	public void init() throws ServletException, IOException {
	} 

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/plain");
		PrintWriter out = res.getWriter();
		out.println("servlet is working");
		out.close();
	}

	public void destroy() {
	}
}
