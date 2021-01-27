package model;

public class Event {
	private Integer event_no;
	private String event_context;
	private String event_photo;
	private String event_title;
	public String getEvent_title() {
		return event_title;
	}
	public void setEvent_title(String event_title) {
		this.event_title = event_title;
	}
	public Integer getEvent_no() {
		return event_no;
	}
	public void setEvent_no(Integer event_no) {
		this.event_no = event_no;
	}
	public String getEvent_context() {
		return event_context;
	}
	public void setEvent_context(String event_context) {
		this.event_context = event_context;
	}
	public String getEvent_photo() {
		return event_photo;
	}
	public void setEvent_photo(String event_photo) {
		this.event_photo = event_photo;
	}
	
	
}
