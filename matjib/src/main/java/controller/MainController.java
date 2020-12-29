package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.LoginDao;
import model.User;

@Controller
public class MainController {
	@Autowired
	private LoginDao loginDao;
	
	@RequestMapping(value="/main/ranking.html",
			method=RequestMethod.GET)
	public ModelAndView ranking() {
		ModelAndView mav = new ModelAndView(
				"jsp/ranking");
		return mav;
	}
	
	
	
	
	//회원 가입으로 이동
	@RequestMapping(value="/jsp/userentry.html",
			method=RequestMethod.GET)
	public ModelAndView entryForm() {
		ModelAndView mav = new ModelAndView(
				"jsp/userentry");
		mav.addObject("user",new User());
		mav.addObject("BODY","userentry.jsp");
		return mav;		
	}
			
	// 첫화면 매핑
	@RequestMapping(value="/main/main.html",method=RequestMethod.GET)
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView("jsp/template");
		return mav;
	}
}
