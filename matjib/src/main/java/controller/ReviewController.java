package controller;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.LoginDao;
import dao.ReviewDao;
import dao.StoreDao;
import model.Review;
import model.Store;

@Controller
public class ReviewController {
	@Autowired
	private ReviewDao reviewDao;
	@Autowired
	private LoginDao loginDao;
	@Autowired
	private StoreDao storeDao;

	@RequestMapping(value = "/review/review_regist.html", method = RequestMethod.POST)
	public ModelAndView review_regist(Review review, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if (session.getAttribute("loginUser") == null) {
			mav = new ModelAndView("jsp/template");
			mav.addObject("BODY", "login_test.jsp");
			return mav;
		} else {
			mav = new ModelAndView("jsp/refresh_for_detail");

		}
		int review_maxNo;

		if (reviewDao.getMaxReview_No() == null) {
			review_maxNo = 1;
			review.setReview_no(review_maxNo);
		} else {
			review.setReview_no(reviewDao.getMaxReview_No() + 1);
		}
		Integer user_no = review.getUser_no();
		Integer store_no = review.getStore_no();
		Store store = storeDao.getStore(store_no);
		String gender = loginDao.getGender(user_no);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd.HH");
		Date time = new Date();
		String time1 = sdf.format(time);
		String birth = loginDao.getBirth(user_no);
		String[] birthNum = birth.split("-");
		Integer birth1 = Integer.parseInt(birthNum[0]);
		Integer birth2 = Integer.parseInt(birthNum[1]);
		Integer birth3 = Integer.parseInt(birthNum[2]);
		/* String birth4=birthNum[0]+birthNum[1]+birthNum[2]; */

		review.setReview_reg_date(time1);
		LocalDate start = LocalDate.of(birth1, birth2, birth3);
		LocalDate end = LocalDate.now();
		long years = ChronoUnit.YEARS.between(start, end);
		System.out.println(years + "나이");

		if (years >= 40) {
			int old_count = storeDao.get_old_count_male(store_no);
			store.setOrder_count_old(old_count + 1);
			storeDao.update_old_count(store);
		} else {
			int young_count = storeDao.get_young_count_male(store_no);
			store.setOrder_count_young(young_count + 1);
			storeDao.update_young_count(store);
		}

		if (gender.equals("M")) {
			int male_count = storeDao.get_order_count_male(store_no);
			store.setOrder_count_male(male_count + 1);
			storeDao.update_male_count(store);

		} else {
			int female_count = storeDao.get_order_count_female(store_no);
			store.setOrder_count_female(female_count + 1);
			storeDao.update_female_count(store);
		}
		reviewDao.review_Regist(review);
		mav.addObject("BANNER", "banner_total_detail.jsp");
		mav.addObject("BODY", "total_detail.jsp");
		mav.addObject("Store_no", store_no);
		return mav;
	}
}