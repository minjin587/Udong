package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	@RequestMapping(value= "/jsp/menutop.html")
	public ModelAndView menutop() {
		ModelAndView mav = new ModelAndView("jsp/template");
//		mav.addObject("");
		mav.addObject("BODY","menu.jsp");
		return mav;
	}
	@RequestMapping(value= "/jsp/template.html")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView("jsp/template");
		return mav;
	}
}
