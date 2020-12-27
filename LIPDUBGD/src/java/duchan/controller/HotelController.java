/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duchan.controller;

import duchan.entity.Hotel;
import duchan.model.HotelModel;
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
@RequestMapping(value= "/hotelController")
public class HotelController {
    private HotelModel hotelmodel;

    public HotelController() {
    hotelmodel = new HotelModel();
    }
    
    @RequestMapping(value= "/getAllHotel")
    public ModelAndView getAllHotel(){
        ModelAndView mav = new ModelAndView("quanlykhachsan");
        List<Hotel> listHotel = hotelmodel.getAll();
        mav.addObject("listHotel", listHotel);
        return mav;
    }
    @RequestMapping (value= "/GetAllHotel1")
    public ModelAndView getAllHotel1(){
        ModelAndView mav = new ModelAndView("hotels");
        List<Hotel> listHotel = hotelmodel.getAll();
        mav.addObject("listHotel", listHotel);
        return mav;
    }
    @RequestMapping (value= "/GetAllHotel2")
    public ModelAndView getDetailHotel(){
        ModelAndView mav = new ModelAndView("search-hotel");
        List<Hotel> listHotel = hotelmodel.getAll();
        mav.addObject("listHotel", listHotel);
        return mav;
    }
    
    @RequestMapping(value="/initInsertHotel")
    public ModelAndView  initInsert(){
        ModelAndView mav = new  ModelAndView("NewHotel");
        // khoi tao doi tuong Product chua du lieu can them moi
        Hotel hotelNew = new Hotel();
        // add proNew vao mav
        mav.addObject("hotelNew", hotelNew);
        return mav;
    }
    @RequestMapping(value="/insert")
    public String insertHotel(Hotel hotelNew){
        // thuc hien goi sang model product
        boolean check = hotelmodel.insertPro(hotelNew);
        if (check) {
            return "redirect:getAllHotel.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value="/initUpdateHotel", method = RequestMethod.GET)
    public ModelAndView initUpdate(String hotelId){
        ModelAndView mav = new ModelAndView("UpdateHotel");
        Hotel hoUpdate = hotelmodel.getHotelById(hotelId);
        mav.addObject("hotelUp", hoUpdate);
        return mav;
    }
    @RequestMapping(value="/updateHotel", method = RequestMethod.POST)
    public String updateHotel(Hotel hoUpdate){
        // thuc hien update
        boolean  check = hotelmodel.updateHotel(hoUpdate);
        if (check) {
            return "redirect:getAllHotel.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value="/deleteHotel.htm")
    public String deleteProduct(String hotelId){
        boolean check = hotelmodel.deleteHotel(hotelId);
        if (check) {
            return "redirect:getAllHotel.htm";
        }else{
            return "error";
        }
    }
    
}