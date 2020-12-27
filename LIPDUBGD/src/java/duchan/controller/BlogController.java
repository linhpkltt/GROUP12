/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duchan.controller;

import duchan.entity.Blog;
import duchan.model.BlogModel;
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
@RequestMapping(value= "/blogController")
public class BlogController {
    private BlogModel blogmodel;

    public BlogController() {
    blogmodel = new BlogModel();
    }
    
    @RequestMapping(value= "/getAllBlog")
    public ModelAndView getAllBlog(){
        ModelAndView mav = new ModelAndView("Blog");
        List<Blog> listBlog = blogmodel.getAll();
        mav.addObject("listBlog", listBlog);
        return mav;
    }
     @RequestMapping(value= "/getAllBlog1")
    public ModelAndView getAllBlog1(){
        ModelAndView mav = new ModelAndView("full-post");
        List<Blog> listBlog = blogmodel.getAll();
        mav.addObject("listBlog", listBlog);
        return mav;
    }
    @RequestMapping(value="/initInsertBlog")
    public ModelAndView  initInsert(){
        ModelAndView mav = new  ModelAndView("NewBlog");
        // khoi tao doi tuong Product chua du lieu can them moi
        Blog blogNew = new Blog();
        // add proNew vao mav
        mav.addObject("blogNew", blogNew);
        return mav;
    }
    @RequestMapping(value = "/insert.htm")
    public String insertBanner(Blog blogNew){
        // thuc hien goi sang model product
        boolean check = blogmodel.insertPro(blogNew);
        if (check) {
            return "redirect:getAllBlog.htm";
        }else{
            return "error";
        }
        
        
    }
    @RequestMapping(value="/initUpdateBlog", method = RequestMethod.GET)
    public ModelAndView initUpdate(String blogId){
        ModelAndView mav = new ModelAndView("UpdateBlog");
        Blog blogUp = blogmodel.getBlogbyId(blogId);
        mav.addObject("blogUp", blogUp);
        return mav;
    }
    @RequestMapping(value="/updateBlog", method = RequestMethod.POST)
    public String updateBanner(Blog blogUp){
        // thuc hien update
        boolean  check = blogmodel.updateBlog(blogUp);
        if (check) {
            return "redirect:getAllBlog.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value="/deleteBlog.htm")
    public String deleteBanner(String blogId){
        boolean check = blogmodel.deleteBlog(blogId);
        if (check) {
            return "redirect:getAllBlog.htm";
        }else{
            return "error";
        }
    }
    
}
