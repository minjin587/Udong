package model;

import org.springframework.web.multipart.MultipartFile;

public class User {
	private Integer user_no;
	private String user_id;
	private String password;
	private String name;
	public String nickname;
	private String birth;
	private String gender;
	public String phone;
	private String email;
	private String profile;
	private String grade;
	private Integer phone1;
	private Integer phone2;
	private Integer phone3;
	private Integer photo_no;
	private MultipartFile image;
	
	public Integer getUser_no() {
		return user_no;
	}
	public void setUser_no(Integer user_no) {
		this.user_no = user_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public Integer getPhone1() {
		return phone1;
	}
	public void setPhone1(Integer phone1) {
		this.phone1 = phone1;
	}
	public Integer getPhone2() {
		return phone2;
	}
	public void setPhone2(Integer phone2) {
		this.phone2 = phone2;
	}
	public Integer getPhone3() {
		return phone3;
	}
	public void setPhone3(Integer phone3) {
		this.phone3 = phone3;
	}
	public Integer getPhoto_no() {
		return photo_no;
	}
	public void setPhoto_no(Integer photo_no) {
		this.photo_no = photo_no;
	}
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	
}
