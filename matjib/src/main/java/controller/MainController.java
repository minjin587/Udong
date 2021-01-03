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
	
	@RequestMapping(value="/jsp/storedetail.html",
			method=RequestMethod.GET)
	public ModelAndView storeDetail() {
		ModelAndView mav = new ModelAndView(
				"jsp/template");
		mav.addObject("BANNER","banner_store_detail.jsp");
		mav.addObject("BODY","store_regist.jsp");		
		return mav;
	}
	
	
	
	//로그인 페이지 매핑//
	@RequestMapping(value="/jsp/login.html",
			method=RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView(
				"jsp/template");
		mav.addObject("BANNER","banner_login.jsp");
		mav.addObject("BODY","login_test.jsp");
		return mav;
	}
	
	
	//고객센터 매핑//
	@RequestMapping(value="/jsp/qnacenter.html",
			method=RequestMethod.GET)
	public ModelAndView qnacenter() {
		ModelAndView mav = new ModelAndView(
				"jsp/template");
		mav.addObject("BANNER","banner_qnacenter.jsp");
		mav.addObject("BODY","qnacenter.jsp");
		return mav;
	}
	
	
	
	// 랭킹 세부화면으로 이동 //
	@RequestMapping(value="/main/ranking.html",
			method=RequestMethod.GET)
	public ModelAndView ranking() {
		ModelAndView mav = new ModelAndView(
				"jsp/template");
		mav.addObject("BANNER","banner_ranking.jsp");
		mav.addObject("BODY","ranking.jsp");		
		return mav;
	}
	
	
	//회원 가입으로 이동
	@RequestMapping(value="/jsp/userentry.html",
			method=RequestMethod.GET)
	public ModelAndView entryForm() {
		ModelAndView mav = new ModelAndView(
				"jsp/template");
		mav.addObject("user",new User());
		mav.addObject("BANNER","banner_entry.jsp");
		mav.addObject("BODY","userentry.jsp");		
		return mav;		
	}
	
	// BODY안에 4사진 
	@RequestMapping(value="/jsp/main.html",
			method=RequestMethod.GET)
	public ModelAndView main(String BODY) {
		ModelAndView mav = new ModelAndView(
				"jsp/template");
		mav.addObject("BODY","main.jsp");		
		return mav;
	}
	
		
	// 첫화면 매핑 (Index 와 template)
	@RequestMapping(value="/main/template.html",method=RequestMethod.GET)
	public ModelAndView template() {
		ModelAndView mav = new ModelAndView(
				"jsp/template");		
		return mav;
	}
}
