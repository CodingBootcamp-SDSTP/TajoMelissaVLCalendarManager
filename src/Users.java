public class Users
{
	private String employeeId;
	private String lastName;
	private String firstName;
	private String middleName;
	private String position;
	private String emailAdd;

	public Users(String id, String ln, String fn, String mn, String pos, String email) {
		employeeId = id;
		lastName = ln;
		firstName = fn;
		lastName = ln;
		middleName = mn;
		position = pos;
		emailAdd = email;
	}

	public String getEmployeeId() {
		return(employeeId);
	}

	public void setEmployeeId(String id) {
		employeeId = id;
	}

	public String getLastName() {
		return(lastName);
	}

	public void setLastName(String ln) {
		lastName = ln;
	}

	public String getFirstName() {
		return(firstName);
	}

	public void setFirstName(String fn) {
		firstName = fn;
	}

	public String getMidName() {
		return(middleName);
	}

	public void setMidName(String mn) {
		middleName = mn;
	}

	public String getPosition() {
		return(position);
	}

	public void setPosition(String pos) {
		position = pos;
	}

	public String getEmail() {
		return(emailAdd);
	}

	public void setEmail(String email) {
		emailAdd = email;
	}
}
