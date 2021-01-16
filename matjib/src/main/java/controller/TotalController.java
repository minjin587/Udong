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
public class TotalController {
   @Autowired
   private StoreDao storeDao;
   @Autowired
   private LoginDao loginDao;
   @Autowired
   private ReviewDao reviewDao;
   
   @RequestMapping(value = "/total/detail.html", method = RequestMethod.GET)
   public ModelAndView total(Integer store_no,HttpSession session) {
      ModelAndView mav = new ModelAndView("jsp/template");
      Store store = storeDao.getStore(store_no);
      String user_id=(String)session.getAttribute("loginUser");
      if(user_id!=null) {
         User user = loginDao.getUser(user_id);
          mav.addObject("User",user);
      }    
      List<Review> reviewList = reviewDao.getReviewList(store_no);
      if(reviewList !=null) {
         mav.addObject("ReviewList",reviewList);
      }
      List<ImageFile> photo = storeDao.getPhoto(store_no);
      mav.addObject("Store", store);
      mav.addObject("Photo",photo);
      mav.addObject("BANNER", "banner_total_detail.jsp");
      mav.addObject("BODY", "total_detail.jsp");
      return mav;
   }
}