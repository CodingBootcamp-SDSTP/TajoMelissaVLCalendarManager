import java.io.*;
import java.sql.*;

class VLCalendarManagerDatabase
{
	private UsersCollection users;

	public VLCalendarManagerDatabase() {
		users = new UsersCollection();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:8080/vlmanagerdb?user=admin1&password=adminpw&serverTimezone=UTC&useSSL=false");
			readFromDb(conn);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

	public boolean readFromDb(Connection conn) {
		System.out.println("Connected ....");
		boolean read = false;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT * FROM employees;");
			while(rs.next()) {
				String[] emp = {
					rs.getString("employeeid"),
					rs.getString("lastname"),
					rs.getString("firstname"),
					rs.getString("middlename"),
					rs.getString("position"),
					rs.getString("emailadd"),
					"user"
				};
				createObject(emp);
			}
			read = true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		finally{
			try{ if(stmt != null) {stmt.close();}} catch(Exception e){}
			try{ if(rs != null) {rs.close();}} catch(Exception e){}
		}
		return(true);
	}

	public void createObject(String... emp) {
		String str = emp[emp.length-1];
		if("user".equals(str)) {
			Users user = new Users(emp[0], emp[1], emp[2], emp[3], emp[4], emp[5]);
			users.addUser(user);
		}
	}
}
