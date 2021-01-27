package dao;

import java.util.List;

import model.Event;

public interface EventDao {
	Integer getMaxEventNo();
	Integer getMaxImageNo();
	void AddEvent(Event event);
	List<Event> searchEV();
	void updateEvent(Event event);
	void deleteEvent(Integer event_no);
}
