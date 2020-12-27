/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duchan.controller;

import duchan.entity.Userr;
import duchan.model.UserModel;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author duchan
 */
@Controller
@RequestMapping(value= "/userController")
public class UserController {
    private UserModel usermodel;

    public UserController() {
    usermodel = new UserModel();
    }
    
    @RequestMapping(value= "/getAllUser")
    public ModelAndView getAllUser(){
        ModelAndView mav = new ModelAndView("User");
        List<Userr> listUser = usermodel.getAll();
        mav.addObject("listUser", listUser);
        return mav;
    }
    @RequestMapping(value="/initInsertUser")
    public ModelAndView  initInsert(){
        ModelAndView mav = new  ModelAndView("NewUser");
        // khoi tao doi tuong Product chua du lieu can them moi
        Userr userNew = new Userr();
        // add proNew vao mav
        mav.addObject("userNew", userNew);
        return mav;
    }
    @RequestMapping(value="/insert")
    public String insertUser(Userr userNew){
        // thuc hien goi sang model product
        boolean check = usermodel.insertPro(userNew);
        if (check) {
            return "redirect:getAllUser.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value="/initUpdateUser", method = RequestMethod.GET)
    public ModelAndView initUpdate(String userId){
        ModelAndView mav = new ModelAndView("UpdateUser");
        Userr userUp = usermodel.getUserbyId(userId);
        mav.addObject("userUp", userUp);
        return mav;
    }
    @RequestMapping(value="/updateUser", method = RequestMethod.POST)
    public String updateHotel(Userr userUp){
        // thuc hien update
        boolean  check = usermodel.updateUser(userUp);
        if (check) {
            return "redirect:getAllUser.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value="/deleteHotel.htm")
    public String deleteUser(String userId){
        boolean check = usermodel.deleteUser(userId);
        if (check) {
            return "redirect:getAllUser.htm";
        }else{
            return "error";
        }
    }
    
}
