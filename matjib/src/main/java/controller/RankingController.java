   package controller;
   
   import java.util.List;
   
   import org.springframework.beans.factory.annotation.Autowired;
   import org.springframework.stereotype.Controller;
   import org.springframework.web.bind.annotation.RequestMapping;
   import org.springframework.web.bind.annotation.RequestMethod;
   import org.springframework.web.servlet.ModelAndView;
   
   import dao.StoreDao;
   import model.Store;
   @Controller
   public class RankingController {
      @Autowired
      private StoreDao storeDao;
      
      
      @RequestMapping(value="ranking/review_star.html")
      public ModelAndView ranking_star() {
         ModelAndView mav = new ModelAndView("jsp/template");
         List<Store> storeList=storeDao.getStoreByStar();
         mav.addObject("BODY","ranking_detail.jsp");
         mav.addObject("BANNER","banner_ranking_lady.jsp");
         mav.addObject("StoreList",storeList);
         return mav;
         
      }
      
      @RequestMapping(value="ranking/review_ranking.html")
      public ModelAndView ranking_count() {
         ModelAndView mav = new ModelAndView("jsp/template");
         List<Store> storeList=storeDao.getStoreByReview();
         mav.addObject("BODY","ranking_detail.jsp");
         mav.addObject("BANNER","banner_ranking_lady.jsp");
         mav.addObject("StoreList",storeList);
         return mav;
      }
      
   
      @RequestMapping(value="ranking/ranking_2030.html")
      public ModelAndView ranking_2030() {
         ModelAndView mav = new ModelAndView("jsp/template");
         List<Store> storeList=storeDao.getStoreBy2030();
         mav.addObject("BODY","ranking_detail.jsp");
         mav.addObject("BANNER","banner_ranking_lady.jsp");
         mav.addObject("StoreList",storeList);
         
         
         return mav;
      }
      @RequestMapping(value="ranking/raking_uncle.html")
      public ModelAndView uncle() {
         ModelAndView mav = new ModelAndView("jsp/template");
         List<Store> storeList=storeDao.getStoreByUncle();
         mav.addObject("BODY","ranking_detail.jsp");
         mav.addObject("BANNER","banner_ranking_lady.jsp");
         mav.addObject("StoreList",storeList);
         
         
         return mav;
      }
      @RequestMapping(value="ranking/raking_female.html")
      public ModelAndView ranking_female() {
         ModelAndView mav = new ModelAndView("jsp/template");
         List<Store> storeList=storeDao.getStoreByFemale();
         mav.addObject("BODY","ranking_detail.jsp");
         mav.addObject("BANNER","banner_ranking_lady.jsp");
         mav.addObject("StoreList",storeList);
         
         
         return mav;
      }
      @RequestMapping(value="ranking/raking_male.html")
      public ModelAndView ranking_male() {
         ModelAndView mav = new ModelAndView("jsp/template");
         List<Store> storeList=storeDao.getStoreByMale();
         mav.addObject("BODY","ranking_detail.jsp");
         mav.addObject("BANNER","banner_ranking_lady.jsp");
         mav.addObject("StoreList",storeList);
         
         
         return mav;
      }
      
   }