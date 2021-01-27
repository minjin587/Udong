package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.StoreDao;
import model.Store;
import model.User;
@Controller
public class ManagerController {
   @Autowired
   private StoreDao storeDao;
   
	@RequestMapping(value = "/manager/event.html", method = RequestMethod.GET)
	public ModelAndView event1() {
		ModelAndView mav = new ModelAndView("jsp/template");
		mav.addObject("BANNER", "banner_event.jsp");
		mav.addObject("BODY", "event_regist.jsp");
		return mav;
	}
   
  
   @RequestMapping(value = "/manager/storeview.html")
   public ModelAndView StoreView(Integer NO) {
      ModelAndView mav = new ModelAndView("jsp/template");
      Store store = storeDao.getStore(NO);
      mav.addObject("STORE",store);
      mav.addObject("BANNER","banner_admin.jsp");
      mav.addObject("BODY","manager_storeDetail.jsp");
      return mav;
   }
   @RequestMapping(value = "/manager/updatestore.html", method=RequestMethod.POST )
   public ModelAndView Update(Store store, Integer storeNo) {
      ModelAndView mav = new ModelAndView("jsp/template");
      store.setStore_no(storeNo);      
      storeDao.updateAdmin(store);
      return mav;
   }
}