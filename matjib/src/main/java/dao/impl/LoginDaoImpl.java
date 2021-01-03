package dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.LoginDao;
import model.User;

@Repository
public class LoginDaoImpl implements LoginDao {
	public String getPassword(String user_id) {
		return session.selectOne("mapper.Usermapper.getPassword",user_id);
	}

	@Autowired
	private SqlSession session;
	
	public void entryUser(User user) {
		session.insert("mapper.Usermapper.insertUser", user);
	}
}
