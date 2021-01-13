package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.StoreDao;
import model.Store;

@Controller
public class TotalController {
	@Autowired
	private StoreDao storeDao;
	
	
	@RequestMapping(value = "/total/detail.html", method = RequestMethod.GET)
	public ModelAndView total() {
		ModelAndView mav = new ModelAndView("jsp/template");

		List<Store> StoreList = storeDao.findStore();
		mav.addObject("storeList", StoreList);
		mav.addObject("BANNER", "banner_total_detail.jsp");
		mav.addObject("BODY", "total_detail.jsp");
		return mav;
	}
}
