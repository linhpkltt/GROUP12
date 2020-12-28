/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duchan.controller;

import duchan.entity.Userr;
import duchan.model.checkLogin;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author duchan
 */
@Controller
@RequestMapping(value = "/admin")
public class LoginController {
    private checkLogin checkLogin1;

    public LoginController() {
        checkLogin1 = new checkLogin();
    }
 
     
    
    @RequestMapping(value = "/index")
    public ModelAndView getIndex(HttpSession session) {
        if (session.getAttribute("user") == null) {
            ModelAndView mav = new ModelAndView("login");
            return mav;
        } else {
            ModelAndView mav = new ModelAndView("index");
            return mav;
        }

    }

    @RequestMapping(value = "/login")
    public ModelAndView login(HttpSession session, @RequestParam("userName") String userName, @RequestParam("password") String password) {
        Userr user = checkLogin1.checkLogin(userName, password);
        if (user !=null) {
            ModelAndView mav = new ModelAndView("redirect:/hotelController/getAllHotel.htm");
//            ModelAndView mav = new ModelAndView("index");
            session.setAttribute("user", user);

            return mav;
        } else {
            ModelAndView mav = new ModelAndView("login");
            mav.addObject("messs", "Đang nhập thất  bại");
            return mav;
        }

    }
}