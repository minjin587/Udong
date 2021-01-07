package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.LoginDao;
import model.User;

@Controller
public class MyPageController {
	@Autowired
	private LoginDao logindao;
	
	@RequestMapping(value = "/jsp/mypagemain.html")
	public ModelAndView Mypageinfo(String user_id , User user, HttpSession session) {
		ModelAndView mav = new ModelAndView("jsp/mypage");
		user = logindao.getUser(user_id);
		String password = logindao.getPassword(user.getUser_id());
		mav.addObject("USER",user);
		mav.addObject("BODY","pwd.jsp");
		return mav;
	}
	@RequestMapping(value = "/nickname/nickcheck.html",method=RequestMethod.GET)
	public ModelAndView nickcheck(String name) {
		ModelAndView mav = new ModelAndView("jsp/nickCheck");
		String cnt = logindao.getNickName(name);
		if(cnt == null) {
			mav.addObject("NICK","OK");
		} else {
			mav.addObject("NICK","NO");
		}
		mav.addObject("NAME",name);
		return mav;
	}
	
}
