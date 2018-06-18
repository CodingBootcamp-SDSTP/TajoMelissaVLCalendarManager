import java.sql.*;

public class Validate
{
	public static boolean checkUser(String username, String password) {
		boolean st = false;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:8080/");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return
	}
}