package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyPageController {
	@RequestMapping(value = "/jsp/mypagemain.html")
	public ModelAndView Mypageinfo() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("BODY2","test.jsp");
		return null;
	}
}
