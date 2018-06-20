import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.ArrayList;

public class UsersServlet extends HttpServlet
{
	VLCalendarManagerDatabase vldb;
	UsersCollection users;
	ArrayList<Users> u;

	public void init() throws ServletException {
		vldb = new VLCalendarManagerDatabase();
		users = new UsersCollection();
		u = users.getAllUsers();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/xml");
		PrintWriter out = response.getWriter();
		StringBuilder sb = new StringBuilder();
		sb.append("<users>");
		for(int i=0; i<u.size(); i++) {
			Users user = u.get(i);
			sb.append("<user>");
			sb.append("<employeeid>" + user.getEmployeeId() + "</employeeid>");
			sb.append("<lastname>" + user.getLastName() + "</lastname>");
			sb.append("<firstname>" + user.getFirstName() + "</firstname>");
			sb.append("<middlename>" + user.getMidName() + "</middlename>");
			sb.append("<position>" + user.getPosition() + "</position>");
			sb.append("<email>" + user.getEmail() + "</email></user>");
		}
		sb.append("</users>");
		out.println(sb.toString());
		System.out.println(sb.toString());
	}

	public void destroy() {
		vldb = null;
		users = null;
		u = null;
	}
}
