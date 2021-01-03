package controller;



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
import model.User;

@Controller
public class LoginController {
	@Autowired
	private LoginDao loginDao;
	
	@RequestMapping(value = "/login/main.html", method = RequestMethod.POST)
	public ModelAndView login(@Valid User user, BindingResult br, HttpSession session) {
		ModelAndView mav = new ModelAndView("jsp/template");
		if (br.hasErrors()) {
			mav.getModel().putAll(br.getModel());
		}
		String password = loginDao.getPassword(user.getUser_id());
		if (password == null || !user.getPassword().equals(password)) {
			JOptionPane.showMessageDialog(null, "아이디와 암호를 확인하세요.");
		} else {
			session.setAttribute("loginUser", user.getUser_id());
			
		}
		return mav;
	}
}
