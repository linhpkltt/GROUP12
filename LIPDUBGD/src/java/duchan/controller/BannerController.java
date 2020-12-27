/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duchan.controller;

import duchan.entity.Banner;
import duchan.model.BannerModel;
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
@RequestMapping(value= "/bannerController")
public class BannerController {
    private BannerModel bannermodel;

    public BannerController() {
    bannermodel = new BannerModel();
    }
    
    @RequestMapping(value= "/getAllBanner")
    public ModelAndView getAllBanner(){
        ModelAndView mav = new ModelAndView("Banner");
        List<Banner> listBanner = bannermodel.getAll();
        mav.addObject("listBanner", listBanner);
        return mav;
    }
    @RequestMapping(value="/initInsertBanner")
    public ModelAndView  initInsert(){
        ModelAndView mav = new  ModelAndView("NewBanner");
        // khoi tao doi tuong Product chua du lieu can them moi
        Banner bannerNew = new Banner();
        // add proNew vao mav
        mav.addObject("bannerNew", bannerNew);
        return mav;
    }
    @RequestMapping(value = "/insert.htm")
    public String insertBanner(Banner bannerNew){
        // thuc hien goi sang model product
        boolean check = bannermodel.insertPro(bannerNew);
        if (check) {
            return "redirect:getAllBanner.htm";
        }else{
            return "error";
        }
        
        
    }
    @RequestMapping(value="/initUpdateBanner", method = RequestMethod.GET)
    public ModelAndView initUpdate(String bannerId){
        ModelAndView mav = new ModelAndView("UpdateBanner");
        Banner bannerUp = bannermodel.getUserbyId(bannerId);
        mav.addObject("bannerUp", bannerUp);
        return mav;
    }
    @RequestMapping(value="/updateBanner", method = RequestMethod.POST)
    public String updateBanner(Banner bannerUp){
        // thuc hien update
        boolean  check = bannermodel.updateBanner(bannerUp);
        if (check) {
            return "redirect:getAllBanner.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value="/deleteBanner.htm")
    public String deleteBanner(String bannerId){
        boolean check = bannermodel.deleteBanner(bannerId);
        if (check) {
            return "redirect:getAllBanner.htm";
        }else{
            return "error";
        }
    }
    
}