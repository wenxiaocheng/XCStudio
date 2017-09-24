package untill;

import model.User;

public interface UserMapper {
	public void insertUser(User user);

	public User getUser(int id);
}