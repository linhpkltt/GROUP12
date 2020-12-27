/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duchan.controller;

import duchan.entity.Servicee;
import duchan.model.ServiceModel;
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
@RequestMapping(value= "/serviceController")
public class ServiceController {
    private ServiceModel servicemodel;

    public ServiceController() {
    servicemodel = new ServiceModel();
    }

    
    
    @RequestMapping(value= "/getAllService")
    public ModelAndView getAll(){
        ModelAndView mav = new ModelAndView("Service");
        List<Servicee> listService = servicemodel.getAll();
        mav.addObject("listService", listService);
        return mav;
    }
    @RequestMapping(value="/initInsertService")
    public ModelAndView  initInsert(){
        ModelAndView mav = new  ModelAndView("NewService");
        // khoi tao doi tuong Product chua du lieu can them moi
        Servicee serviceNew = new Servicee();
        // add proNew vao mav
        mav.addObject("serviceNew", serviceNew);
        return mav;
    }
    @RequestMapping(value = "/insertService.htm")
    public String insertComment(Servicee serviceNew){
        // thuc hien goi sang model product
        boolean check = servicemodel.insertPro(serviceNew);
        if (check) {
            return "redirect:getAllService.htm";
        }else{
            return "error";
        }
        
        
    }
    @RequestMapping(value="/initUpdateService", method = RequestMethod.GET)
    public ModelAndView initUpdate(String serviceId){
        ModelAndView mav = new ModelAndView("UpdateService");
        Servicee serviceUp = servicemodel.getServicebyId(serviceId);
        mav.addObject("serviceUp", serviceUp);
        return mav;
    }
    @RequestMapping(value="/updateService", method = RequestMethod.POST)
    public String updateService(Servicee serviceUp){
        // thuc hien update
        boolean  check = servicemodel.updateService(serviceUp);
        if (check) {
            return "redirect:getAllService.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value="/deleteComment.htm")
    public String deleteService(String serviceId){
        boolean check = servicemodel.deleteService(serviceId);
        if (check) {
            return "redirect:getAllService.htm";
        }else{
            return "error";
        }
    }
    
}

