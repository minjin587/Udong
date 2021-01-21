package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.LoginDao;
import dao.StoreDao;
import model.Store;
import model.User;

@Controller
public class MainController {
	@Autowired
	private LoginDao loginDao;
	@Autowired
	private StoreDao storeDao;

	   @RequestMapping(value = "/main/store_list.html")
	   public ModelAndView Store_list() {
	      ModelAndView mav = new ModelAndView("jsp/template");
	      List<Store> List = storeDao.getAdminList();
	      mav.addObject("STORE",List);
	      mav.addObject("BANNER","banner_manager_admin.jsp");
	      mav.addObject("BODY","manager_list.jsp");      
	       return mav;
	   }
	
	@RequestMapping(value="/manager/managerdetail.html",
            method=RequestMethod.GET)
      public ModelAndView ManagerDetail() {
         ModelAndView mav = new ModelAndView("jsp/template");
         List<User> liset2 = loginDao.getPullUser();
         mav.addObject("LIST", liset2);
         mav.addObject("BANNER","banner_manager_detail.jsp");
         mav.addObject("BODY","manager_user.jsp");      
         return mav;
      }
	
	// mav.add envet_detail로변경해야함
	@RequestMapping(value = "/main/event1.html", method = RequestMethod.GET)
	public ModelAndView event1() {
		ModelAndView mav = new ModelAndView("jsp/template");
		mav.addObject("BANNER", "banner_event.jsp");
		mav.addObject("BODY", "event_regist.jsp");
		return mav;
	}

	@RequestMapping(value = "/main/category.html", method = RequestMethod.GET)
	public ModelAndView category() {
		ModelAndView mav = new ModelAndView("jsp/template");

		mav.addObject("BANNER", "banner_main_category.jsp");
		mav.addObject("BODY", "main_category.jsp");
		return mav;
	}

	@RequestMapping(value = "/main/total.html", method = RequestMethod.GET)
	public ModelAndView total() {
		ModelAndView mav = new ModelAndView("jsp/template");

		List<Store> StoreList = storeDao.findStore();
		mav.addObject("storeList", StoreList);
		mav.addObject("BANNER", "banner_main_total.jsp");
		mav.addObject("BODY", "main_total.jsp");
		return mav;
	}
	//마이페이지
	@RequestMapping(value = "/jsp/mypage.html")
	public ModelAndView Mypage(User user, HttpSession session) {
		ModelAndView mav = new ModelAndView("jsp/template");
		mav.addObject("BANNER","banner_mypage.jsp");
		mav.addObject("BODY","mypage.jsp");
		return mav;
	}

	@RequestMapping(value = "/jsp/storedetail.html", method = RequestMethod.GET)
	public ModelAndView storeDetail(HttpSession session, Store store) {
		ModelAndView mav = new ModelAndView("jsp/template");
		mav.addObject("BANNER", "banner_store_detail.jsp");
		Integer user_no = (Integer) session.getAttribute("user_no");
		Integer store_no = storeDao.getStoreNo(user_no);

		if (store_no != null) {
			store = storeDao.getStore(store_no);
			mav.addObject("STORE", store);
			mav.addObject("BODY", "store_management.jsp");
			return mav;
		} else {
			mav.addObject("BODY", "store_regist.jsp");
			return mav;
		}
	}

	// 로그인 페이지 매핑//
	@RequestMapping(value = "/login/login.html", method = RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView("jsp/template");
		mav.addObject("BANNER", "banner_login.jsp");
		mav.addObject("BODY", "login_test.jsp");
		return mav;
	}

	// 고객센터 매핑//
	@RequestMapping(value = "/jsp/qnacenter.html", method = RequestMethod.GET)
	public ModelAndView qnacenter() {
		ModelAndView mav = new ModelAndView("jsp/template");
		mav.addObject("BANNER", "banner_qnacenter.jsp");
		mav.addObject("BODY", "qnacenter.jsp");
		return mav;
	}

	// 랭킹 세부화면으로 이동 //
	@RequestMapping(value = "/main/ranking.html", method = RequestMethod.GET)
	public ModelAndView ranking() {
		ModelAndView mav = new ModelAndView("jsp/template");
		mav.addObject("BANNER", "banner_ranking.jsp");
		mav.addObject("BODY", "ranking.jsp");
		return mav;
	}

	// 회원 가입으로 이동
	@RequestMapping(value = "/jsp/userentry.html", method = RequestMethod.GET)
	public ModelAndView entryForm() {
		ModelAndView mav = new ModelAndView("jsp/template");
		mav.addObject("user", new User());
		mav.addObject("BANNER", "banner_entry.jsp");
		mav.addObject("BODY", "userentry.jsp");
		return mav;
	}

	// BODY안에 4사진
	@RequestMapping(value = "/jsp/main.html", method = RequestMethod.GET)
	public ModelAndView main(String BODY) {
		ModelAndView mav = new ModelAndView("jsp/template");
		mav.addObject("BODY", "main.jsp");
		return mav;
	}

	// 첫화면 매핑 (Index 와 template)
	@RequestMapping(value = "/main/template.html", method = RequestMethod.GET)
	public ModelAndView template() {
		ModelAndView mav = new ModelAndView("jsp/template");
		return mav;
	}
}
