package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import model.Store;
@Controller
public class RankingController {	
	@RequestMapping(value="/ranking/lady.html",
			method=RequestMethod.GET)
	public ModelAndView lady() {
		ModelAndView mav = new ModelAndView(
				"jsp/template");
		mav.addObject("BANNER","banner_ranking_lady.jsp");
		mav.addObject("BODY","ranking_lady.jsp");
		return mav;
	}
}
