package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.LoginDao;
import dao.ReviewDao;
import dao.StoreDao;
import model.ImageFile;
import model.Review;
import model.Store;
import model.User;

@Controller
public class CategoryController {
	@Autowired
	private StoreDao storeDao;

	@Autowired
	private LoginDao loginDao;
	@Autowired
	private ReviewDao reviewDao;

	@RequestMapping(value = "/category/korean_detail.html", method = RequestMethod.GET)
	public ModelAndView total(Integer store_no, HttpSession session) {
		ModelAndView mav = new ModelAndView("jsp/template");
		Store store = storeDao.getStore(store_no);
		String user_id = (String) session.getAttribute("loginUser");
		if (user_id != null) {
			User user = loginDao.getUser(user_id);
			mav.addObject("User", user);
		}
		List<Review> reviewList = reviewDao.getReviewList(store_no);
		if (reviewList != null) {
			mav.addObject("ReviewList", reviewList);
		}
		List<ImageFile> photo = storeDao.getPhoto(store_no);
		mav.addObject("Store", store);
		mav.addObject("Photo", photo);
		mav.addObject("BANNER", "banner_total_detail.jsp");
		mav.addObject("BODY", "category_korean_detail.jsp");
		return mav;
	}
	
	@RequestMapping(value = "/category/japanese.html", method = RequestMethod.GET)
	public ModelAndView japanese(Store store) {
		ModelAndView mav = new ModelAndView("jsp/template");
		List<Store> storeList = storeDao.findJapanese();
		mav.addObject("koreanList", storeList);
		mav.addObject("BANNER", "banner_main_category.jsp");
		mav.addObject("BODY", "category_korean.jsp");
		return mav;
	}
	@RequestMapping(value = "/category/chinese.html", method = RequestMethod.GET)
	public ModelAndView chinese(Store store) {
		ModelAndView mav = new ModelAndView("jsp/template");
		List<Store> storeList = storeDao.findChinese();
		mav.addObject("koreanList", storeList);
		mav.addObject("BANNER", "banner_main_category.jsp");
		mav.addObject("BODY", "category_korean.jsp");
		return mav;
	}
	@RequestMapping(value = "/category/pizaaChicken.html", method = RequestMethod.GET)
	public ModelAndView pizaaChicken(Store store) {
		ModelAndView mav = new ModelAndView("jsp/template");
		List<Store> storeList = storeDao.findPizzaChicken();
		mav.addObject("koreanList", storeList);
		mav.addObject("BANNER", "banner_main_category.jsp");
		mav.addObject("BODY", "category_korean.jsp");
		return mav;
	}
	@RequestMapping(value = "/category/cafe.html", method = RequestMethod.GET)
	public ModelAndView cafe(Store store) {
		ModelAndView mav = new ModelAndView("jsp/template");
		List<Store> storeList = storeDao.findCafe();
		mav.addObject("koreanList", storeList);
		mav.addObject("BANNER", "banner_main_category.jsp");
		mav.addObject("BODY", "category_korean.jsp");
		return mav;
	}
	//분식 야식
	@RequestMapping(value = "/category/snack.html", method = RequestMethod.GET)
	public ModelAndView snack(Store store) {
		ModelAndView mav = new ModelAndView("jsp/template");
		List<Store> storeList = storeDao.findSnack();
		mav.addObject("koreanList", storeList);
		mav.addObject("BANNER", "banner_main_category.jsp");
		mav.addObject("BODY", "category_korean.jsp");
		return mav;
	}
	
	
	@RequestMapping(value = "/category/korean.html", method = RequestMethod.GET)
	public ModelAndView korean(Store store) {
		ModelAndView mav = new ModelAndView("jsp/template");
		List<Store> storeList = storeDao.findKorean();
		mav.addObject("koreanList", storeList);
		mav.addObject("BANNER", "banner_main_category.jsp");
		mav.addObject("BODY", "category_korean.jsp");
		return mav;

	}
}
