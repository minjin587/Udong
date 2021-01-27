package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.LoginDao;

@Controller
public class IdCheckController {
   @Autowired
   LoginDao loginDao;
   @RequestMapping(value="/idcheck/idcheck.html",method=RequestMethod.GET)
   public ModelAndView idCheck(String ID) {
      ModelAndView mav = new ModelAndView(
            "jsp/idCheck");
      Integer cnt = loginDao.getIdCount(ID);
      if(cnt > 0) {
         mav.addObject("DUP","YES");
      }else {
         mav.addObject("DUP","NO");
      }
      mav.addObject("ID",ID);
      return mav;
      
   }
   @RequestMapping(value="/idcheck/nicknamecheck.html",method=RequestMethod.GET)
   public ModelAndView NicknameCheck(String nickname) {
      ModelAndView mav = new ModelAndView(
            "jsp/nicknameCheck");
      Integer cnt = loginDao.getNicknameCount(nickname);
      if(cnt > 0) {
         mav.addObject("DUP","YES");
      }else {
         mav.addObject("DUP","NO");
      }
      mav.addObject("nickname",nickname);
      return mav;
      
   }

}