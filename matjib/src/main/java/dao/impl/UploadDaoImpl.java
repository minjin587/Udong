package dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.UploadDao;
import model.User;
@Repository
public class UploadDaoImpl implements UploadDao {


	@Autowired
	private SqlSession session;

	public void upload(User user) {
		session.insert("mapper.Usermapper.upload",user);
	}

	public Integer getMaxPhotoNo() {
		return session.selectOne("mapper.Usermapper.getMaxPhotoNo");
	}
}
