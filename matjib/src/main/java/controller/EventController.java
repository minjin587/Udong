package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import dao.EventDao;
import model.Event;

@Controller
public class EventController {
	@Autowired
	private EventDao eventDao;

	@RequestMapping(value = "/event/Addevent.html", method = RequestMethod.POST)
	public ModelAndView addEvent(MultipartHttpServletRequest mtfRequest, Event event, HttpSession session) {
		ModelAndView mav = new ModelAndView("jsp/template");
		List<MultipartFile> multiFile = mtfRequest.getFiles("thumbnail");
		String path = "C:\\Users\\Uk\\Desktop\\UdongProject\\uploadImage\\";
		System.out.println("test1");

		int maxNo;
		if (eventDao.getMaxEventNo() == null) {
			maxNo = 1;
			event.setEvent_no(maxNo);
		} else {
			event.setEvent_no(eventDao.getMaxEventNo() + 1);
		}

		System.out.println("test2");
		for (MultipartFile mf : multiFile) {
			System.out.println("test3");

			String originFileName = mf.getOriginalFilename();// 원본파일
			////////////////
			ServletContext ctx = session.getServletContext();
			path = ctx.getRealPath("/image/" + originFileName);
			long fileSize = mf.getSize();// 파일 사이즈

			System.out.println("originFileName : " + originFileName);
			System.out.println("fileSize : " + fileSize);
//	          

			event.setEvent_photo(originFileName);

			try {
				mf.transferTo(new File(path));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		System.out.println(event.getEvent_no());
		System.out.println(event.getEvent_title());
		System.out.println(event.getEvent_context());
		eventDao.AddEvent(event);

		return mav;
	}

	@RequestMapping(value = "/event/manage.html", method = RequestMethod.GET)
	public ModelAndView manage(Event event) {
		ModelAndView mav = new ModelAndView("jsp/template");				
		List<Event> EventList = eventDao.searchEV();
		
		
		mav.addObject("eventList",EventList);
		mav.addObject("BANNER", "banner_event.jsp");
		mav.addObject("BODY", "event_detail.jsp");
		return mav;
	}
	
	@RequestMapping(value = "/event/modify.html", method = RequestMethod.GET)
	public ModelAndView modify(Event event,Integer event_no) {
		ModelAndView mav = new ModelAndView("jsp/template");				
		List<Event> EventList = eventDao.searchEV();		
		mav.addObject("eventList",EventList);
		System.out.println("이벤트넘버"+event_no);
		mav.addObject("event_NO",event_no); 
		mav.addObject("BANNER", "banner_event.jsp");
		mav.addObject("BODY", "event_modify.jsp");
		return mav;
	}
	
	@RequestMapping(value = "/event/update.html", method = RequestMethod.POST)
	public ModelAndView update(Event event, MultipartHttpServletRequest mtfRequest,
			HttpSession session) {
		ModelAndView mav = new ModelAndView("jsp/template");		
		List<Event> EventList = eventDao.searchEV();		
		mav.addObject("eventList",EventList);
		String path = "C:\\Users\\Uk\\Desktop\\UdongProject\\uploadImage\\";
		List<MultipartFile> multiFile2 = mtfRequest.getFiles("thumbnail");
		System.out.println(event.getEvent_no());
		for (MultipartFile mf : multiFile2) {
	         
	         
	         String originFileName = mf.getOriginalFilename();// 원본파일
	         ////////////////
	         ServletContext ctx = 
	              session.getServletContext();
	        path = ctx.getRealPath("/image/"+originFileName);
	        System.out.println("시스아웃패스"+path);
	         ///////////////////////////
	        long fileSize = mf.getSize();// 파일 사이즈
	         
	         
	         
	         System.out.println("originFileName : " + originFileName);
	         System.out.println("fileSize : " + fileSize);
//	         String file_name = System.currentTimeMillis() + originFileName;

	         event.setEvent_photo(originFileName);
	         
	         
	         try {
	            mf.transferTo(new File(path));
	         } catch (IllegalStateException e) {
	            e.printStackTrace();
	         } catch (IOException e) {
	            e.printStackTrace();
	         }
	      }
	     
	     eventDao.updateEvent(event); 
	    
		return mav;
	}
	
	@RequestMapping(value = "/event/delete.html", method = RequestMethod.GET)
	public ModelAndView delete_event(Event event,Integer event_no) {
		ModelAndView mav = new ModelAndView("jsp/template");
		System.out.println(event_no);
		eventDao.deleteEvent(event_no);
		return mav;
	}
	
}
