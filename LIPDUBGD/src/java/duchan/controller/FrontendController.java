/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duchan.controller;

import duchan.model.HotelModel;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author duchan
 */
@Controller
@RequestMapping (value = "/FrontendController")
public class FrontendController {
    private HotelModel proModel;

    public FrontendController() {
    proModel = new HotelModel();
    }
    @RequestMapping(value= "/index")
    public ModelAndView getAllIndex(){
        ModelAndView mav = new ModelAndView("index");
        return mav;
    }
    @RequestMapping(value= "/about")
    public ModelAndView getAllAbout(){
        ModelAndView mav = new ModelAndView("about");
        return mav;
    }@RequestMapping(value= "/contacts")
    public ModelAndView getAllContacts(){
        ModelAndView mav = new ModelAndView("contacts");
        return mav;
    }
    @RequestMapping(value= "/gallery")
    public ModelAndView getAllGallery(){
        ModelAndView mav = new ModelAndView("gallery");
        return mav;
    }
}
