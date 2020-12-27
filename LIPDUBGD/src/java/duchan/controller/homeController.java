/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duchan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Admin
 */
@Controller
@RequestMapping(value = "/homeController")
public class homeController {
 
    @RequestMapping(value = "/home")
    public ModelAndView homeLipdubgd () {
        ModelAndView mav = new ModelAndView("HOMELIPDUBGD");
        return mav;
}
}
