import java.util.ArrayList;

class UsersCollection
{
	private ArrayList<Users> users;

	public UsersCollection() {
		users = new ArrayList<Users>();
	}

	public void addUser(Users u) {
		users.add(u);
	}

	public ArrayList<Users> getAllUsers() {
		return(users);
	}

	public Users getUserByIndex(int i) {
		return(users.get(i));
	}

	public int getUsersCount() {
		return(users.size());
	}
}
