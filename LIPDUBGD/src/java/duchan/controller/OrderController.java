/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duchan.controller;

import duchan.entity.Orderr;
import duchan.model.OrderModel;
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
@RequestMapping(value= "/orderController")
public class OrderController {
    private OrderModel ordermodel;

    public OrderController() {
    ordermodel = new OrderModel();
    }

    
    
    @RequestMapping(value= "/getAllOrder")
    public ModelAndView getAllOrder(){
        ModelAndView mav = new ModelAndView("Order");
        List<Orderr> listOrder = ordermodel.getAll();
        mav.addObject("listOrder", listOrder);
        return mav;
    }
    @RequestMapping(value="/initInsertOrder")
    public ModelAndView  initInsert(){
        ModelAndView mav = new  ModelAndView("NewOrder");
        // khoi tao doi tuong Product chua du lieu can them moi
        Orderr orderNew = new Orderr();
        // add proNew vao mav
        mav.addObject("orderNew", orderNew);
        return mav;
    }
    @RequestMapping(value = "/insertOrder.htm")
    public String insertOrder(Orderr orderNew){
        // thuc hien goi sang model product
        boolean check = ordermodel.insertOrder(orderNew);
        if (check) {
            return "redirect:getAllOrder.htm";
        }else{
            return "error";
        }
        
        
    }
    @RequestMapping(value="/initUpdateOrder", method = RequestMethod.GET)
    public ModelAndView initUpdate(String orderId){
        ModelAndView mav = new ModelAndView("UpdateOrder");
        Orderr orderUp = ordermodel.getOrderbyId(orderId);
        mav.addObject("orderUp", orderUp);
        return mav;
    }
    @RequestMapping(value="/updateOrder", method = RequestMethod.POST)
    public String updateOrder(Orderr orderUp){
        // thuc hien update
        boolean  check = ordermodel.updateOrder(orderUp);
        if (check) {
            return "redirect:getAllComment.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value="/deleteOrder.htm")
    public String deleteBanner(String orderId){
        boolean check = ordermodel.deleteOrder(orderId);
        if (check) {
            return "redirect:getAllOrder.htm";
        }else{
            return "error";
        }
    }
    
}