package model;

import org.springframework.web.multipart.MultipartFile;

public class Store {
	private Integer store_no;	
	private String store_name;
	private String store_bn;
	private String store_ceo;
	private Integer store_tel;
	private String store_addr;
	private String store_category;
	private String store_context;
	private Integer order_count_male;
	private Integer order_count_female;
	private Integer order_count_young;
	private Integer order_count_old;
	private Integer user_no;
	private String main_image;	
	private MultipartFile thumbnail;
	private Integer admin_star;
	private Integer review_count;
	private Integer star_total;
	private Integer star_avg;
	
	
	public Integer getAdmin_star() {
		return admin_star;
	}
	public void setAdmin_star(Integer admin_star) {
		this.admin_star = admin_star;
	}
	public Integer getReview_count() {
		return review_count;
	}
	public void setReview_count(Integer review_count) {
		this.review_count = review_count;
	}
	public Integer getStar_total() {
		return star_total;
	}
	public void setStar_total(Integer star_total) {
		this.star_total = star_total;
	}
	public Integer getStar_avg() {
		return star_avg;
	}
	public void setStar_avg(Integer star_avg) {
		this.star_avg = star_avg;
	}
	public Integer getStore_no() {
		return store_no;
	}
	public void setStore_no(Integer store_no) {
		this.store_no = store_no;
	}
	public Integer getUser_no() {
		return user_no;
	}
	public void setUser_no(Integer user_no) {
		this.user_no = user_no;
	}
	
	public String getMain_image() {
		return main_image;
	}
	public void setMain_image(String main_image) {
		this.main_image = main_image;
	}
	public MultipartFile getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(MultipartFile thumbnail) {
		this.thumbnail = thumbnail;
	}
	//private List<MultipartFile> image;
	//private List<String> store_photo;
	/*
	public List<String> getStore_photo() {
		return store_photo;
	}
	public void setStore_photo(List<String> store_photo) {
		this.store_photo = store_photo;
	}
	
	public List<MultipartFile> getImage() {
		return image;
	}
	public void setImage(List<MultipartFile> image) {
		this.image = image;
	}
	*/
	public Integer getOrder_count_male() {
		return order_count_male;
	}
	public void setOrder_count_male(Integer order_count_male) {
		this.order_count_male = order_count_male;
	}
	public Integer getOrder_count_female() {
		return order_count_female;
	}
	public void setOrder_count_female(Integer order_count_female) {
		this.order_count_female = order_count_female;
	}
	public Integer getOrder_count_young() {
		return order_count_young;
	}
	public void setOrder_count_young(Integer order_count_young) {
		this.order_count_young = order_count_young;
	}
	public Integer getOrder_count_old() {
		return order_count_old;
	}
	public void setOrder_count_old(Integer order_count_old) {
		this.order_count_old = order_count_old;
	}
	public String getStore_name() {
		return store_name;
	}
	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}
	public String getStore_bn() {
		return store_bn;
	}
	public void setStore_bn(String store_bn) {
		this.store_bn = store_bn;
	}

	public String getStore_ceo() {
		return store_ceo;
	}
	public void setStore_ceo(String store_ceo) {
		this.store_ceo = store_ceo;
	}
	public Integer getStore_tel() {
		return store_tel;
	}
	public void setStore_tel(Integer store_tel) {
		this.store_tel = store_tel;
	}
	public String getStore_addr() {
		return store_addr;
	}
	public void setStore_addr(String store_addr) {
		this.store_addr = store_addr;
	}
	public String getStore_category() {
		return store_category;
	}
	public void setStore_category(String store_category) {
		this.store_category = store_category;
	}
	public String getStore_context() {
		return store_context;
	}
	public void setStore_context(String store_context) {
		this.store_context = store_context;
	}
	
	
	
}
