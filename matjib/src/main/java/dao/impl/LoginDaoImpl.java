package dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.LoginDao;
import model.User;

@Repository
public class LoginDaoImpl implements LoginDao {
   public Integer getUser_no(String user_id) {
      return session.selectOne("mapper.Usermapper.getUser_no",user_id);
   }

   public Integer getNicknameCount(String nickname) {
      return session.selectOne("mapper.Usermapper.getNicknameCount",nickname);
   }

   public Integer getIdCount(String id) {
      return session.selectOne("mapper.Usermapper.getIdCount",id);
   }

   public String getGrade(String user_id) {
      return session.selectOne("mapper.Usermapper.getGrade",user_id);
   }

   public Integer getMaxIdNo() {
      return session.selectOne("mapper.Usermapper.getMaxIdNo");
   }

   public String getPassword(String user_id) {
      return session.selectOne("mapper.Usermapper.getPassword",user_id);
   }
   public Integer getStore_no(Integer user_no) {
	      
	      return session.selectOne("mapper.Storemapper.getStore_no",user_no);
	   }
   public User getUser(String user_id) {
	      return session.selectOne("mapper.Usermapper.getUser", user_id);
	   }

   @Autowired
   private SqlSession session;
   
   public void entryUser(User user) {
      session.insert("mapper.Usermapper.insertUser", user);
   }
}