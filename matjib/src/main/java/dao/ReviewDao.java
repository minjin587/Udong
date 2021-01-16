package dao;

import java.util.List;

import model.Review;

public interface ReviewDao {

   void review_Regist(Review review);
   Integer getMaxReview_No();
   List<Review> getReviewList(Integer store_no);
}