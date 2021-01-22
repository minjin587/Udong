package controller;



import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.LoginDao;
import model.User;

@Controller
public class LoginController {
   @Autowired
   private LoginDao loginDao;
   
   @RequestMapping(value = "/login/main.html", method = RequestMethod.POST)
   public ModelAndView login(@Valid User user, BindingResult br, HttpSession session) {
      
      ModelAndView mav = new ModelAndView();
      Integer id_count = loginDao.getUser_id(user.getUser_id());
      String password = loginDao.getPassword(user.getUser_id());
   
      if (id_count==0||password == null || !user.getPassword().equals(password)) {
         mav = new ModelAndView("jsp/loginFail");
      } else {
         String grade = loginDao.getGrade(user.getUser_id());
         System.out.println("grade"+grade);
         Integer user_no=loginDao.getUser_no(user.getUser_id());
         Integer store_no=loginDao.getStore_no(user_no);
         Integer store_count=loginDao.getStore_count(user_no);
         mav = new ModelAndView("jsp/template");
         session.setAttribute("loginUser", user.getUser_id());
         session.setAttribute("grade",grade);
         session.setAttribute("user_no",user_no);
         session.setAttribute("store_no",store_no);
         session.setAttribute("store_count",store_count);
      }
      return mav;
   }
}