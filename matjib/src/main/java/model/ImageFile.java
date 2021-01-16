package model;


public class ImageFile {

	private Integer photo_no;//이미지 고유 넘버(기본키) ex: 1,2,3
	private Integer store_no;//업체 넘버(외래키) ex:1,2,3
	private String photo_path;//이미지가 저장된 경로 ex: C:\folder\
	private String photo_org_name;//파일 본래 이름 ex: image.jpg
	private String photo_new_name;//변경 파일 이름(이미지가 업로드되면서 기존에 저장된 이미지와 이름이 같으면 충돌이 일어나므로 업로드하면서 이름을 바꿔줘야함) ex: 11234.jpg
	public Integer getPhoto_no() {
		return photo_no;
	}
	public void setPhoto_no(Integer photo_no) {
		this.photo_no = photo_no;
	}
	public Integer getStore_no() {
		return store_no;
	}
	public void setStore_no(Integer store_no) {
		this.store_no = store_no;
	}
	public String getPhoto_path() {
		return photo_path;
	}
	public void setPhoto_path(String photo_path) {
		this.photo_path = photo_path;
	}
	public String getPhoto_org_name() {
		return photo_org_name;
	}
	public void setPhoto_org_name(String photo_org_name) {
		this.photo_org_name = photo_org_name;
	}
	public String getPhoto_new_name() {
		return photo_new_name;
	}
	public void setPhoto_new_name(String photo_new_name) {
		this.photo_new_name = photo_new_name;
	}
	
	

}
	

