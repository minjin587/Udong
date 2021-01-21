package dao;

import java.util.List;

import model.User;

public interface LoginDao {
	void entryUser(User user);

	String getPassword(String user_id);

	Integer getMaxIdNo();

	String getGrade(String user_id);

	User getUser(String user_id);

	String getNickName(String nickname);

	String getPhone(String phone);

	void setMypage(User user_id);

	Integer getIdCount(String id);

	Integer getNicknameCount(String nickname);

	Integer getUser_no(String user_id);

	Integer getStore_no(Integer user_no);
	
	List<User> getPullUser();
	String getGender(Integer user_no);
	String getBirth(Integer user_no);
	String getUserID(String user_id);
}
