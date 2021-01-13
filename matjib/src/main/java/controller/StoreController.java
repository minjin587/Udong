package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
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

import dao.StoreDao;
import model.ImageFile;
import model.Store;
import model.User;

@Controller
public class StoreController {
   @Autowired
   private StoreDao storeDao;
   private User user;
   private static final String SAVE_PATH= "C:\\Users\\min\\Desktop\\sts-bundle\\sts-3.9.7.RELEASE\\images\\";
   @RequestMapping(value="/store/store_update.html", method=RequestMethod.POST)
     public ModelAndView storeUpdate(Store store, ImageFile imagefile, HttpSession
     session , MultipartHttpServletRequest mtfRequest) {     
      
     ModelAndView mav = new ModelAndView("jsp/template");
     
     Integer store_no = (Integer)session.getAttribute("store_no");     
        
//       store = storeDao.getStore(store_no);//스토어 넘버로 전체 조회       
     store.setStore_no(store_no);     
     storeDao.updateStore_regist(store);
     System.out.println("목록"+store_no);


//     사진 업데이트     
     List<MultipartFile> multiFile = mtfRequest.getFiles("input_imgs");
     
     
      String src = mtfRequest.getParameter("src");
      String path = "C:\\Users\\Uk\\Desktop\\UdongProject\\uploadImage\\";         
      ArrayList<ImageFile> files = new ArrayList<ImageFile>();   
      Integer user_no = (Integer)session.getAttribute("user_no");
      
      
//     delete
      imagefile.setStore_no(store_no); 
      System.out.println("삭제"+store_no);
     storeDao.deleteImage(store_no);
    //   
    
     System.out.println("삭제완료");
     
     
     store.setUser_no(user_no);
      

   //재 삽입  
     for (MultipartFile mf : multiFile) {
           System.out.println("for문 시작");
           String originFileName = mf.getOriginalFilename();//원본파일         
           long fileSize = mf.getSize();//파일 사이즈
           System.out.println("originFileName : " + originFileName);
           System.out.println("fileSize : " + fileSize);
             
           String safeFile = System.currentTimeMillis() + originFileName;
           System.out.println(safeFile);
           
           ImageFile imgDto =new ImageFile();
           
           int photo_maxNo;
           if(storeDao.getMaxImageNo()==null) {
             photo_maxNo=1;
             imgDto.setPhoto_no(photo_maxNo);               
             }else {               
                imgDto.setPhoto_no(storeDao.getMaxImageNo()+1);
             } 
          
           imgDto.setStore_no(store.getStore_no());
           imgDto.setPhoto_new_name(safeFile); 
           imgDto.setPhoto_path(path);
           imgDto.setPhoto_org_name(originFileName);
           storeDao.AddPhoto(imgDto);
               
             try {
                mf.transferTo(new File(safeFile));
             }catch(IllegalStateException e) {
                e.printStackTrace();
             }catch(IOException e){
                e.printStackTrace();
             }
          }
         return mav; 
         }
      

   @RequestMapping(value="/store/Already_added.html")
   public ModelAndView Already_added(HttpSession session) {
      ModelAndView mav = new ModelAndView("jsp/template");
      int store_count=(Integer)session.getAttribute("store_count");
      System.out.println(store_count);
      if(store_count>=1) {
        
         mav.addObject("BODY", "already_added.jsp");
      }else {
         mav.addObject("BODY", "store_management.jsp");
      }
            
      
      
      return mav;
   }
   
   @RequestMapping(value = "/jsp/store_Manage.html", method = RequestMethod.GET)
   public ModelAndView storeDetail(Store store, HttpSession session) {
      ModelAndView mav = new ModelAndView("jsp/template");
      Integer store_no = (Integer) session.getAttribute("store_no");
      store = storeDao.getStore(store_no);
      System.out.println(store_no + "test");
      mav.addObject("STORE", store);

      mav.addObject("BANNER", "banner_store_detail.jsp");
      mav.addObject("BODY", "store_management.jsp");

      return mav;
   }

   @RequestMapping(value = "/store/addStore.html", method = RequestMethod.POST)
   public ModelAndView AddStore(Store store, ImageFile imagefile, HttpSession session,
         MultipartHttpServletRequest mtfRequest) {
	   System.out.println("테스1");
      ModelAndView mav = new ModelAndView("jsp/template");
      System.out.println("테스2");
    
      /* MultipartFile multiFile = store.getImage(); */
      List<MultipartFile> multiFile = mtfRequest.getFiles("image");
      System.out.println("테스3");
      List<MultipartFile> multiFile2 = mtfRequest.getFiles("thumbnail");
      System.out.println("테스4");
      String src = mtfRequest.getParameter("src");
      System.out.println("src value : " + src);
      String path = "C:\\Users\\Uk\\Desktop\\UdongProject\\uploadImage\\";
      System.out.println(path);
      ArrayList<ImageFile> files = new ArrayList<ImageFile>();

      Integer user_no = (Integer) session.getAttribute("user_no");
      System.out.println(user_no);
      store.setUser_no(user_no);

      int maxNo;
      if (storeDao.getMaxStoreNo() == null) {
         maxNo = 1;
         store.setStore_no(maxNo);
      } else {
         store.setStore_no(storeDao.getMaxStoreNo() + 1);
      }
      store.setOrder_count_male(0);
      store.setOrder_count_female(0);
      store.setOrder_count_young(0);
      store.setOrder_count_old(0);
      
      System.out.println("싸무네일"+store.getThumbnail());
     
      
      
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
//          String file_name = System.currentTimeMillis() + originFileName;

          store.setMain_image(originFileName);
          
          
          try {
             mf.transferTo(new File(path));
          } catch (IllegalStateException e) {
             e.printStackTrace();
          } catch (IOException e) {
             e.printStackTrace();
          }
       }
      
      storeDao.AddStore(store);
     
      System.out.println("test1");
     
      
      /////////////////////////////////////////////////////

      for (MultipartFile mf : multiFile) {
            
          
          String originFileName = mf.getOriginalFilename();// 원본파일
          ServletContext ctx = 
                  session.getServletContext();
            path = ctx.getRealPath("/image/"+originFileName);
            System.out.println("시스아웃패스"+path);
          long fileSize = mf.getSize();// 파일 사이즈
          System.out.println("originFileName : " + originFileName);
          System.out.println("fileSize : " + fileSize);

          String file_name = System.currentTimeMillis() + originFileName;
   

          ImageFile imgDto = new ImageFile();
     
          int photo_maxNo;
          if (storeDao.getMaxImageNo() == null) {
             photo_maxNo = 1;
             imgDto.setPhoto_no(photo_maxNo);
          } else {
             imgDto.setPhoto_no(storeDao.getMaxImageNo() + 1);
          }
          /*
           * imgDto.setPhoto_no(1);//이미지 기본키
           */
        
          imgDto.setStore_no(store.getStore_no());
          imgDto.setPhoto_new_name(file_name);
          imgDto.setPhoto_path(path);
          imgDto.setPhoto_org_name(originFileName);
          storeDao.AddPhoto(imgDto);
          
          try {
             mf.transferTo(new File(path));
          } catch (IllegalStateException e) {
             e.printStackTrace();
          } catch (IOException e) {
             e.printStackTrace();
          }
       }
      
      
      
   
      /* store.setStore_photo(files[i]); */
      System.out.println("files : " + files);
     
      return mav;
   }

   @RequestMapping(value = "/jsp/store_secession.html", method = RequestMethod.GET)
   public ModelAndView store() {
      ModelAndView mav = new ModelAndView("jsp/template");
      mav.addObject("BANNER", "banner_store_detail.jsp");
      mav.addObject("BODY", "store_secession.jsp");
      return mav;
   }
}