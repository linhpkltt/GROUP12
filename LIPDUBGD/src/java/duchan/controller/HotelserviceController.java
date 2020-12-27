/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duchan.controller;

import duchan.entity.HotelService;
import duchan.model.HotelserviceModel;
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
@RequestMapping(value = "/hotelserviceController")
public class HotelserviceController {

    private HotelserviceModel hotelservicemodel;

    public HotelserviceController() {
        hotelservicemodel = new HotelserviceModel();
    }

    @RequestMapping(value = "/getAllHotelservice")
    public ModelAndView getAll() {
        ModelAndView mav = new ModelAndView("Hotelservice");
        List<HotelService> listHotelservice = hotelservicemodel.getAllHotelSevevice();
        mav.addObject("listHotelservice", listHotelservice);
        return mav;
    }

    @RequestMapping(value = "/initInsertHotelservice")
    public ModelAndView initInsert() {
        ModelAndView mav = new ModelAndView("NewHotelService");
        // khoi tao doi tuong Product chua du lieu can them moi
        HotelService hotelserviceNew = new HotelService();
        // add proNew vao mav
        mav.addObject("hotelserviceNew", hotelserviceNew);
        return mav;
    }

    @RequestMapping(value = "/insertHotelservice.htm")
    public String insertHotelService(HotelService hotelserviceNew) {
        // thuc hien goi sang model product
        boolean check = hotelservicemodel.insertHotelservice(hotelserviceNew);
        if (check) {
            return "redirect:getAllHotelservice.htm";
        } else {
            return "error";
        }

    }

    @RequestMapping(value = "/initUpdateHotelservice", method = RequestMethod.GET)
    public ModelAndView initUpdate(String hotelServiceId) {
        ModelAndView mav = new ModelAndView("UpdateHotelService");
        HotelService hotelserviceUp = hotelservicemodel.getHotelservicebyId(hotelServiceId);
        mav.addObject("hotelserviceUp", hotelserviceUp);
        return mav;
    }

    @RequestMapping(value = "/updateHotelservice", method = RequestMethod.POST)
    public String updateHotelservice(HotelService hotelserviceUp) {
        // thuc hien update
        boolean check = hotelservicemodel.updateHotelservice(hotelserviceUp);
        if (check) {
            return "redirect:getAllHotelservice.htm";
        } else {
            return "error";
        }
    }

    @RequestMapping(value = "/deleteHotelservice.htm")
    public String deleteHotelservice(String hotelServiceId) {
        boolean check = hotelservicemodel.deleteHotelservice(hotelServiceId);
        if (check) {
            return "redirect:getAllHotelservice.htm";
        } else {
            return "error";
        }
    }

}

