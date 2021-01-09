package controller;

import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.LoginDao;
import model.User;

@Controller
public class MyPageController {
	@Autowired
	private LoginDao logindao;
	
	@RequestMapping(value = "/jsp/yoya.html")
	public ModelAndView yayo() {
		ModelAndView mav = new ModelAndView("jsp/mypage");
		mav.addObject("BODY","yoya.jsp");
		return mav;
	}
	
	@RequestMapping(value = "jsp/kakunin.html")
	public ModelAndView kakunun() {
		ModelAndView mav = new ModelAndView("jsp/mypage");
		mav.addObject("BODY","kakunin.jsp");
		return mav;
	}
	
	@RequestMapping(value = "/jsp/mypagemain.html")
	public ModelAndView Mypageinfo(String user_id , User user, HttpSession session) {
		ModelAndView mav = new ModelAndView("jsp/mypage");
		String originpwd = logindao.getPassword((String)session.getAttribute("loginUser")); 
		if(originpwd == null || !user.getPassword().equals(originpwd) ) {
			mav.addObject("BODY","nologin.jsp");
		} else {
			user = logindao.getUser(user_id);
			mav.addObject("USER",user);
			mav.addObject("BODY","pwd.jsp");
		}
		return mav;
	}
	@RequestMapping(value = "/nickname/nickcheck.html",method=RequestMethod.GET)
	public ModelAndView nickcheck(String NAME) {
		ModelAndView mav = new ModelAndView("jsp/nickCheck");
		String cnt = logindao.getNickName(NAME);
		if(cnt == null) {
			mav.addObject("NICK","OK");
		} else {
			mav.addObject("NICK","NO");
		}
		mav.addObject("NAME",NAME);
		return mav;
	}
	@RequestMapping(value = "/phone/phonecheck.html", method=RequestMethod.GET)
	public ModelAndView phonecheck(String PHONE) {
		ModelAndView mav = new ModelAndView("jsp/phoneCheck");
		String phone = logindao.getPhone(PHONE);
		if(phone == null) {
			mav.addObject("PH","OK");
		} else {
			mav.addObject("PH","NO");
		}
		mav.addObject("PHONE",PHONE);
		return mav;
	}
}
