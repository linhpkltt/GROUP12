/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duchan.controller;

import duchan.entity.Cart;
import duchan.entity.Hotel;
import duchan.model.HotelModel;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author duchan
 */
@Controller
@RequestMapping(value = "/cartController")
public class CartController {
    private HotelModel proModel;

    public CartController() {
        proModel = new HotelModel();
    }
@RequestMapping(value = "/addCart")    
    public ModelAndView addCart (HttpSession session , HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("shopingcart");
        List<Cart> listCart = (List<Cart>)session.getAttribute("listCart");
        String hotelId = request.getParameter("hotelId");
        Hotel pro = proModel.getHotelById(hotelId);
        if (listCart==null) {
           //khoi tao list cart
           listCart = new ArrayList<>();
            Cart car = new Cart(pro, 1);
            listCart.add(car);
            
        }
        else {
            // kiem tra đã tồn tại chưa
            boolean check = false;
            for (Cart car : listCart) {
                if (car.getHotel().getHotelId().equals(hotelId)) {
                    check = true;
                    break;
                }
   
            }
            if (check) {
                for (int i = 0; i < listCart.size(); i++) {
                    if (listCart.get(i).getHotel().getHotelId().equals(hotelId)) {
                        listCart.get(i).setQuantity(listCart.get(i).getQuantity()+1);
                        break;
                    }
                }
  
            }
            else {
                Cart car = new Cart(pro, 1);
                listCart.add(car);
            }
        }   
        session.setAttribute("listCart", listCart);
        session.setAttribute("tongtien", tongtien(listCart));
        return  mav;
}
    public float tongtien (List<Cart> listCart) {
        float sum = 0 ;
        for (Cart car : listCart) {
            sum+=car.getQuantity()*(car.getHotel().getPrice()==null?1:car.getHotel().getPrice());
    
    }
         return sum;
    }
    @RequestMapping(value = "updateQuantity", method = RequestMethod.POST)
    public String UpdateQuatity (HttpSession session ,HttpServletRequest request) {
        List<Cart> listCart = (List<Cart>)session.getAttribute("listCart");
        String[] arrQuantity = request.getParameterValues("quantity");
        // cap nhat
        for (int i = 0; i <listCart.size(); i++) {
            listCart.get(i).setQuantity(Integer.parseInt(arrQuantity[i]));
        }
        //add lại listcart vào session
        session.setAttribute("listCart", listCart);
        session.setAttribute("tongtien", tongtien(listCart));
        return "shopingcart";
    }
    @RequestMapping(value = "deleteCart")
    public String DeleteCart (HttpSession session ,HttpServletRequest request) {
        // lấy mã cần xoá khỏi hoá đơn
        String hotelId = request.getParameter("hotelId");
        // lấy list card
         List<Cart> listCart = (List<Cart>)session.getAttribute("listCart");
         // xoá khỏi
         for (int i = 0; i <listCart.size(); i++) {
             if (listCart.get(i).getHotel().getHotelId().equals(hotelId)) {
                   listCart.remove(i);
                   break;
             }
        }
         //add lại
            session.setAttribute("listCart", listCart);
        session.setAttribute("tongtien", tongtien(listCart));
        return "shopingcart";
    }
        
}