package model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Review {

	private Integer review_no;
	private String review_context;
	private Integer user_no;
	private Integer store_no;
	private Integer review_star;
	private String review_reg_date;
	private String profile;
	private String nickname;
	private String gender;
	
	
	
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public Integer getReview_no() {
		return review_no;
	}
	public void setReview_no(Integer review_no) {
		this.review_no = review_no;
	}
	public String getReview_context() {
		return review_context;
	}
	public void setReview_context(String review_context) {
		this.review_context = review_context;
	}
	public Integer getUser_no() {
		return user_no;
	}
	public void setUser_no(Integer user_no) {
		this.user_no = user_no;
	}
	public Integer getStore_no() {
		return store_no;
	}
	public void setStore_no(Integer store_no) {
		this.store_no = store_no;
	}
	
	
	public Integer getReview_star() {
		return review_star;
	}
	public void setReview_star(Integer review_star) {
		this.review_star = review_star;
	}
	public String getReview_reg_date() {
		return review_reg_date;
	}
	public void setReview_reg_date(String review_reg_date) {
		this.review_reg_date = review_reg_date;
	}


	
	
	

	
}