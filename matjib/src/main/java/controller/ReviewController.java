package controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.ReviewDao;
import model.Review;

@Controller
public class ReviewController {
   @Autowired
   private ReviewDao reviewDao;

   @RequestMapping(value = "/review/review_regist.html", method = RequestMethod.POST)
   public ModelAndView review_regist(Review review) {
      ModelAndView mav = new ModelAndView("jsp/template");
      int review_maxNo;

      if (reviewDao.getMaxReview_No() == null) {
         review_maxNo = 1;
         review.setReview_no(review_maxNo);
      } else {
         review.setReview_no(reviewDao.getMaxReview_No() + 1);
      }
      SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd.HH");
      Date time = new Date();
      String time1 = sdf.format(time);
      
      review.setReview_reg_date(time1);
      reviewDao.review_Regist(review);
      mav.addObject("BANNER", "banner_total_detail.jsp");
      mav.addObject("BODY", "total_detail.jsp");

      return mav;
   }
}