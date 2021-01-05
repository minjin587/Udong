package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StoreController {
	
	@RequestMapping(value="/jsp/store_Manage.html",
			method=RequestMethod.GET)
	public ModelAndView storeDetail() {
		ModelAndView mav = new ModelAndView(
				"jsp/template");
		mav.addObject("BANNER","banner_store_detail.jsp");
		mav.addObject("BODY","store_management.jsp");		
		return mav;
	}
	
	@RequestMapping(value="/jsp/store_secession.html",
			method=RequestMethod.GET)
	public ModelAndView store() {
		ModelAndView mav = new ModelAndView(
				"jsp/template");
		mav.addObject("BANNER","banner_store_detail.jsp");
		mav.addObject("BODY","store_secession.jsp");		
		return mav;
	}
}
