package dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.LoginDao;
import model.User;

@Repository
public class LoginDaoImpl implements LoginDao {
	public Integer getUser_no(String user_id) {
		return session.selectOne("mapper.Usermapper.getUser_no", user_id);
	}

	public Integer getNicknameCount(String nickname) {
		return session.selectOne("mapper.Usermapper.getNicknameCount", nickname);
	}

	public Integer getIdCount(String id) {
		return session.selectOne("mapper.Usermapper.getIdCount", id);
	}

	public String getGrade(String user_id) {
		return session.selectOne("mapper.Usermapper.getGrade", user_id);
	}

	public Integer getMaxIdNo() {
		return session.selectOne("mapper.Usermapper.getMaxIdNo");
	}

	public String getPassword(String user_id) {
		return session.selectOne("mapper.Usermapper.getPassword", user_id);
	}

	public Integer getStore_no(Integer user_no) {

		return session.selectOne("mapper.Storemapper.getStore_no", user_no);
	}

	public User getUser(String user_id) {
		return session.selectOne("mapper.Usermapper.getUser", user_id);
	}

	public String getGender(Integer user_no) {
		return session.selectOne("mapper.Usermapper.getGender", user_no);
	}

	public String getBirth(Integer user_no) {
		return session.selectOne("mapper.Usermapper.getBirth", user_no);
	}

	public Integer getStore_count(Integer user_no) {
		return session.selectOne("mapper.Usermapper.getStore_count", user_no);
	}

	public Integer getUser_id(String user_id) {
		return session.selectOne("mapper.Usermapper.getUser_id", user_id);
	}

	public String getNickName(String nickname) {
		return session.selectOne("mapper.Usermapper.getNickName", nickname);
	}

	public String getPhone(String phone) {
		return session.selectOne("mapper.Usermapper.getPhone", phone);
	}

	public void setMypage(User user_id) {
		session.update("mapper.Usermapper.setMypage", user_id);
	}
	public List<User> getPullUser() {
	      return session.selectList("mapper.Usermapper.getPullUser");
	   }
	@Autowired
	private SqlSession session;

	public void entryUser(User user) {
		session.insert("mapper.Usermapper.insertUser", user);
	}
}