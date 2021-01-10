package model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.LoginDao;

@Service
public class Mypage {
	@Autowired
	private LoginDao logindao;
	public void modifyItem(String NAME, String PHONE,String id) {
		update(NAME,PHONE,id);
	}
	public void update(String NAME, String PHONE, String id) {
		User mypage = new User();
		mypage.setUser_id(id);
		mypage.setNickname(NAME);
		mypage.setPhone(PHONE);
		logindao.setMypage(mypage);
	}
}
