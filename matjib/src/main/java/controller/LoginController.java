package controller;



import java.util.List;

import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.LoginDao;
import model.Store;
import model.User;

@Controller
public class LoginController {
	@Autowired
	private LoginDao loginDao;
	
	@RequestMapping(value = "/login/main.html", method = RequestMethod.POST)
	public ModelAndView login(@Valid User user, Store store, BindingResult br, HttpSession session, String user_id) {
		ModelAndView mav = new ModelAndView("jsp/template");
		if (br.hasErrors()) {
			mav.getModel().putAll(br.getModel());
		}
		String userid = loginDao.getUserID(user_id);
		String password = loginDao.getPassword(user.getUser_id());
	    if(userid == null || !user.getUser_id().equals(userid)) {
	    	JOptionPane.showMessageDialog(null, "아이디를 확인하세요.");
	    } else if (password == null || !user.getPassword().equals(password)) {
			JOptionPane.showMessageDialog(null, "암호를 확인하세요.");
		} else {
			String grade = loginDao.getGrade(user.getUser_id());
			Integer user_no=loginDao.getUser_no(user.getUser_id());
		    Integer store_no=loginDao.getStore_no(user_no);
			session.setAttribute("loginUser", user.getUser_id());
			session.setAttribute("grade",grade);
			session.setAttribute("user_no",user_no);
	        session.setAttribute("store_no",store_no);
		}
		return mav;
	}
}
