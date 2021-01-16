package dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.ReviewDao;
import model.Review;
@Repository
public class ReviewDaoImpl implements ReviewDao {
   public Integer getMaxReview_No() {
      return session.selectOne("mapper.Reviewmapper.getMaxReview_no");
   }

   public List<Review> getReviewList(Integer store_no) {
	return session.selectList("mapper.Reviewmapper.getReview",store_no);
}

@Autowired
   private SqlSession session;

   public void review_Regist(Review review) {
      session.insert("mapper.Reviewmapper.reviewInsert",review);
   }
   


}