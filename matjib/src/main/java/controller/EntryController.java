package controller;

import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import dao.LoginDao;

import model.User;

@Controller
public class EntryController {
	@Autowired
	private LoginDao loginDao;
//	private UploadDao uploadDao;
	
	// 회원가입 실행
//	@RequestMapping(value="/entry/entry.html",
//			method=RequestMethod.POST)
//	public ModelAndView entry(User user, 
//			HttpSession session) {
//		loginDao.entryUser(user);
//		ModelAndView mav = new ModelAndView(
//				"jsp/template");
//		mav.addObject("user",new User());
//		session.setAttribute("loginUser", user.getUser_id());
//		mav.addObject("BODY","main.jsp");
//		return mav;
//	}
	
	
	@RequestMapping(value="/entry/normalUser.html",method=RequestMethod.GET)
	public ModelAndView entryNormal() {
		ModelAndView mav = new ModelAndView("jsp/template");
		mav.addObject("BANNER","banner_entry.jsp");
		/* mav.addObject("BODY","entryForNormal.jsp"); */
		mav.addObject("BODY","entryForNormal.jsp");
		return mav;
	}
	@RequestMapping(value="/entry/managerlUser.html",method=RequestMethod.GET)
	public ModelAndView entryManager() {
		ModelAndView mav = new ModelAndView("jsp/template");
		mav.addObject("BANNER","banner_entry.jsp");
		mav.addObject("BODY","entryForManager.jsp");
		return mav;
	}
	@RequestMapping(value="/entry/managerlUser.html",method=RequestMethod.POST)
	public ModelAndView entryManager(User user,HttpSession session) {
		int maxNo;
		if(loginDao.getMaxIdNo()==null) {
			maxNo=1;
			user.setUser_no(maxNo);
		}else {
			user.setUser_no(loginDao.getMaxIdNo()+1);
		}
		
		String phone=user.getPhone1()+"-"+user.getPhone2()+"-"+user.getPhone3();
		user.setPhone(phone);
		ModelAndView mav = new ModelAndView("jsp/template");		
		MultipartFile multiFile = user.getImage();
		String fileName = null; String path = null;
		OutputStream os = null;
		if(multiFile != null) {//업로드 파일이 있는 경우
			System.out.println("multiFile is not null");
			fileName=multiFile.getOriginalFilename();
			ServletContext ctx = 
					session.getServletContext();
			path = ctx.getRealPath("/image/"+fileName);
			System.out.println("업로드 위치:"+path);
			try {
				os=new FileOutputStream(path);
				BufferedInputStream bis = 
					new BufferedInputStream(
						multiFile.getInputStream());
				byte[] buffer = new byte[8196];//6K
				int read = 0;
				while((read = bis.read(buffer))>0) {
					os.write(buffer,0,read);
				}
				if(os != null) os.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
			user.setProfile(fileName);	
	
	}
		loginDao.entryUser(user);
//		int maxPhotoNo;
//		if(uploadDao.getMaxPhotoNo()==null) {
//			maxPhotoNo=1;
//			user.setPhoto_no(maxPhotoNo);
//		}else {
//			user.setPhoto_no(uploadDao.getMaxPhotoNo()+1);
//			
//		}
//		
//		
//		uploadDao.upload(user);
		return mav;
	}
	@RequestMapping(value="/entry/entry.html", method=RequestMethod.POST)
	public ModelAndView signNormal(User user,HttpSession session) {
		int maxNo;
		if(loginDao.getMaxIdNo()==null) {
			maxNo=1;
			user.setUser_no(maxNo);
		}else {
			user.setUser_no(loginDao.getMaxIdNo()+1);
		}
		String phone=user.getPhone1()+"-"+user.getPhone2()+"-"+user.getPhone3();
		user.setPhone(phone);
		ModelAndView mav = new ModelAndView("jsp/template");
		
		
		MultipartFile multiFile = user.getImage();
		String fileName = null; String path = null;
		OutputStream os = null;
		if(multiFile != null) {//업로드 파일이 있는 경우
			System.out.println("multiFile is not null");
			fileName=multiFile.getOriginalFilename();
			ServletContext ctx = 
					session.getServletContext();
			path = ctx.getRealPath("/image/"+fileName);
			System.out.println("업로드 위치:"+path);
			try {
				os=new FileOutputStream(path);
				BufferedInputStream bis = 
					new BufferedInputStream(
						multiFile.getInputStream());
				byte[] buffer = new byte[8196];//6K
				int read = 0;
				while((read = bis.read(buffer))>0) {
					os.write(buffer,0,read);
				}
				if(os != null) os.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
			user.setProfile(fileName);	
	
	}
		loginDao.entryUser(user);
//		int maxPhotoNo;
//		if(uploadDao.getMaxPhotoNo()==null) {
//			maxPhotoNo=1;
//			user.setPhoto_no(maxPhotoNo);
//		}else {
//			user.setPhoto_no(uploadDao.getMaxPhotoNo()+1);
//			
//		}
//		
//		
//		uploadDao.upload(user);
		return mav;
	}
			
	
}

