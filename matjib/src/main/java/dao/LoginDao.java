package dao;

import model.User;

public interface LoginDao{
	void entryUser(User user);
	String getPassword(String user_id);
	Integer getMaxIdNo();
	String getGrade(String user_id);
}
