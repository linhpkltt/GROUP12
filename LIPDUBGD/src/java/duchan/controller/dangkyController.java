/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duchan.controller;

import duchan.entity.Userr;
import duchan.model.UserModel;
import duchan.model.checkDangky;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author duchan
 */
public class dangkyController {
   private checkDangky proDangKy;
   private UserModel proModel;

    public dangkyController() {
        proDangKy = new checkDangky();
        proModel = new UserModel();
    }
    
      
 
     
    
  @RequestMapping(value="/initInsertHotel")
    public ModelAndView  initInsert(){
        ModelAndView mav = new  ModelAndView("NewUser");
        // khoi tao doi tuong Product chua du lieu can them moi
        Userr userr = new Userr();
        // add proNew vao mav
        mav.addObject("usernew", userr);
        return mav;
    }
    @RequestMapping(value="/insert")
    public String insertHotel(Userr userNew){
        // thuc hien goi sang model product
        boolean check = proModel.insertPro(userNew);
        if (check) {
            return "redirect:getAllHotel.htm";
        }else{
            return "error";
        }
    }

    @RequestMapping(value = "/login")
    public ModelAndView login(HttpSession session, @RequestParam("username") String username, @RequestParam("password") String pass ,Userr userNew) {
        Userr user = proDangKy.checkLogin(username, pass);
        if (user !=null) {
            boolean check = proModel.insertPro(userNew);
           if (check) {
               System.out.println("Đăng Ký Thành Công");
            session.setAttribute("user", user);

        } else {
            ModelAndView mav = new ModelAndView("dangky");
            mav.addObject("messs", "Đang ky  thất  bại");
            return mav;
        }
        
    }
       return null;
    }
}
    
    