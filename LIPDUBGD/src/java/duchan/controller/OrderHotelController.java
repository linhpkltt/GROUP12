/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duchan.controller;

import duchan.entity.OrderHotel;
import duchan.model.OrderHotelModel;
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
@RequestMapping(value= "/orderhotelController")
public class OrderHotelController {
    private OrderHotelModel ordermodel;

    public OrderHotelController() {
    ordermodel = new OrderHotelModel();
    }

    
    
    @RequestMapping(value= "/getAllOrderHotel")
    public ModelAndView getAllOrderHotel(){
        ModelAndView mav = new ModelAndView("OrderHotel");
        List<OrderHotel> listOrderhotel = ordermodel.getAll();
        mav.addObject("listOrderhotel", listOrderhotel);
        return mav;
    }
    @RequestMapping(value="/initInsertOrderHotel")
    public ModelAndView  initInsert(){
        ModelAndView mav = new  ModelAndView("NewOrderHotel");
        // khoi tao doi tuong Product chua du lieu can them moi
        OrderHotel orderhotelNew = new OrderHotel();
        // add proNew vao mav
        mav.addObject("orderhotelNew", orderhotelNew);
        return mav;
    }
    @RequestMapping(value = "/insertOrderHotel.htm")
    public String insertOrderHotel(OrderHotel orderhotelNew){
        // thuc hien goi sang model product
        boolean check = ordermodel.insertOrderHotel(orderhotelNew);
        if (check) {
            return "redirect:getAllOrderHotel.htm";
        }else{
            return "error";
        }
        
        
    }
    @RequestMapping(value="/initUpdateOrderhotel", method = RequestMethod.GET)
    public ModelAndView initUpdate(String orderHotelId){
        ModelAndView mav = new ModelAndView("UpdateOrderHotel");
        OrderHotel orderhotelUp = ordermodel.getOrderHotelbyId(orderHotelId);
        mav.addObject("orderhotelUp", orderhotelUp);
        return mav;
    }
    @RequestMapping(value="/updateOrderHotel", method = RequestMethod.POST)
    public String updateOrderHotel(OrderHotel orderhotelUp){
        // thuc hien update
        boolean  check = ordermodel.updateOrderHotel(orderhotelUp);
        if (check) {
            return "redirect:getAllOrderHotel.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value="/deleteOrderHotel.htm")
    public String deleteOrderHotel(String orderHotelId){
        boolean check = ordermodel.deleteOrderHotel(orderHotelId);
        if (check) {
            return "redirect:getAllOrderHotel.htm";
        }else{
            return "error";
        }
    }
    
}