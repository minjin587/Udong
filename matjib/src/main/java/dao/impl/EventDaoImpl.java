package dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.EventDao;
import model.Event;
@Repository
public class EventDaoImpl implements EventDao {
	@Autowired
	private SqlSession session;
	
	public Integer getMaxEventNo() {		
		return session.selectOne("mapper.Eventmapper.getMaxEventNo");
	}

	public void AddEvent(Event event) {
		session.insert("mapper.Eventmapper.AddEvent",event);
		
	}
	public Integer getMaxImageNo() {
		return session.selectOne("mapper.Eventmapper.getMaxImageNo");
	}

	public List<Event> searchEV() {
		return session.selectList("mapper.Eventmapper.searchEV");
	}

	public void updateEvent(Event event) {
		session.update("mapper.Eventmapper.updateEvent",event);
		
	}

	public void deleteEvent(Integer event_no) {
		session.delete("mapper.Eventmapper.deleteEvent",event_no);
		
	}
	
	


	
}
