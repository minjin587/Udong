package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import dao.StoreDao;
import model.Store;


@Controller
public class StoreController {
	@Autowired
	private StoreDao storeDao;
 
	@RequestMapping(value="/store/addStore.html",method=RequestMethod.POST)
	   public ModelAndView AddStore(Store store , HttpSession session,
			   MultipartHttpServletRequest mtfRequest
			   ) {	   
	      ModelAndView mav = new ModelAndView("jsp/template");   
		/* MultipartFile multiFile = store.getImage(); */
	      List<MultipartFile> multiFile = mtfRequest.getFiles("image");
	      String src = mtfRequest.getParameter("src");
	      System.out.println("src value : "+ src);
	      
//	      String fileName = null; String path = null;
//	      OutputStream os = null;
	      String path = "C:\\Users\\Uk\\Desktop\\UdongProject\\uploadImage\\";
	      
	      ArrayList<String> files = new ArrayList<String>();
	      
	      for (MultipartFile mf : multiFile) {
	    	  String originFileName = mf.getOriginalFilename();//원본파일
	    	  long fileSize = mf.getSize();//파일 사이즈
	    	  files.add(originFileName);
	    	  System.out.println("originFileName : " + originFileName);
	    	  System.out.println("fileSize : " + fileSize);
	    	  
	    	  String safeFile = path + System.currentTimeMillis() + originFileName;
	    	  System.out.println(safeFile);
	    	  try {
	    		  mf.transferTo(new File(safeFile));
	    	  }catch(IllegalStateException e) {
	    		  e.printStackTrace();
	    	  }catch(IOException e){
	    		  e.printStackTrace();
	    	  }
	      }	      
		/* store.setStore_photo(files[i]); */ 	      
	      System.out.println("files : " + files);
	      store.setStore_photo(files);
	      
	      
//	      if(multiFile != null) {//업로드 파일이 있는 경우
//	         System.out.println("multiFile is not null");
//	         String originFileName = 
//			 fileName=multiFile.getOriginalFilename(); 
//	         ServletContext ctx = 
//	               session.getServletContext();
//	         path = ctx.getRealPath("/image/"+fileName);
//	         System.out.println("업로드 위치:"+path);
//	         try {
//	            os=new FileOutputStream(path);
//	            BufferedInputStream bis = 
//	               new BufferedInputStream(
//	                  multiFile.getInputStream());
//	            byte[] buffer = new byte[8196];//6K
//	            int read = 0;
//	            while((read = bis.read(buffer))>0) {
//	               os.write(buffer,0,read);
//	            }
//	            if(os != null) os.close();
//	         }catch(Exception e) {
//	            e.printStackTrace();
//	         }
//	         store.setStore_photo(fileName);   
//	   
//	   }
	      store.setStore_no(1);
	      store.setOrder_count_male(0);
	      store.setOrder_count_female(0);
	      store.setOrder_count_young(0);
	      store.setOrder_count_old(0);
	      storeDao.AddStore(store);
	      return mav;
	   }

	
	@RequestMapping(value="/jsp/store_Manage.html",
			method=RequestMethod.GET)
	public ModelAndView storeDetail() {
		ModelAndView mav = new ModelAndView(
				"jsp/template");
		mav.addObject("BANNER","banner_store_detail.jsp");
		mav.addObject("BODY","store_management.jsp");		
		return mav;
	}
	
	@RequestMapping(value="/jsp/store_secession.html",
			method=RequestMethod.GET)
	public ModelAndView store() {
		ModelAndView mav = new ModelAndView(
				"jsp/template");
		mav.addObject("BANNER","banner_store_detail.jsp");
		mav.addObject("BODY","store_secession.jsp");		
		return mav;
	}
}
