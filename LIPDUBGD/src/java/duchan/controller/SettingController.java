/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duchan.controller;

import duchan.entity.Setting;
import duchan.model.SettingModel;
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
@RequestMapping(value= "/settingController")
public class SettingController {
    private SettingModel settingmodel;

    public SettingController() {
    settingmodel = new SettingModel();
    }
    
    
    @RequestMapping(value= "/getAllSetting")
    public ModelAndView getAllBanner(){
        ModelAndView mav = new ModelAndView("Setting");
        List<Setting> listSetting = settingmodel.getAll();
        mav.addObject("listSetting", listSetting);
        return mav;
    }
    @RequestMapping(value="/initInsertSetting")
    public ModelAndView  initInsert(){
        ModelAndView mav = new  ModelAndView("NewSetting");
        // khoi tao doi tuong Product chua du lieu can them moi
        Setting settingNew = new Setting();
        // add proNew vao mav
        mav.addObject("settingNew", settingNew);
        return mav;
    }
    @RequestMapping(value = "/insert.htm")
    public String insertSetting(Setting settingNew){
        // thuc hien goi sang model product
        boolean check = settingmodel.insertPro(settingNew);
        if (check) {
            return "redirect:getAllSetting.htm";
        }else{
            return "error";
        }
        
        
    }
    @RequestMapping(value="/initUpdateSetting", method = RequestMethod.GET)
    public ModelAndView initUpdate(String settingId){
        ModelAndView mav = new ModelAndView("UpdateSetting");
        Setting settingUp = settingmodel.getSettingbyId(settingId);
        mav.addObject("settingUp", settingUp);
        return mav;
    }
    @RequestMapping(value="/updateSetting", method = RequestMethod.POST)
    public String updateSetting(Setting settingUp){
        // thuc hien update
        boolean  check = settingmodel.updateSetting(settingUp);
        if (check) {
            return "redirect:getAllSetting.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value="/deleteSetting.htm")
    public String deleteSetting(String settingId){
        boolean check = settingmodel.deleteSetting(settingId);
        if (check) {
            return "redirect:getAllSetting.htm";
        }else{
            return "error";
        }
    }
    
}
