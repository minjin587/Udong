package dao.impl;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.LoginDao;
import model.User;

@Repository
public class LoginDaoImpl implements LoginDao {
	public String getGrade(String user_id) {
		return session.selectOne("mapper.Usermapper.getGrade",user_id);
	}

	public Integer getMaxIdNo() {
		return session.selectOne("mapper.Usermapper.getMaxIdNo");
	}

	public String getPassword(String user_id) {
		return session.selectOne("mapper.Usermapper.getPassword",user_id);
	}

	@Autowired
	private SqlSession session;
	
	public void entryUser(User user) {
		session.insert("mapper.Usermapper.insertUser", user);
	}
	public User getUser(String user_id) {
		return session.selectOne("mapper.Usermapper.getUser", user_id);
	}
	public String getNickName(String nickname) {
		return session.selectOne("mapper.Usermapper.getNickName", nickname);
	}

	public String getPhone(String phone) {
		return session.selectOne("mapper.Usermapper.getPhone", phone);
	}

	public void setMypage(User user_id) {
		session.update("mapper.Usermapper.setMypage",user_id);
	}
	
}
