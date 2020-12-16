package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	@RequestMapping(value="/main/main.html",method=RequestMethod.GET)
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView("jsp/main");
		return mav;
	}
}
