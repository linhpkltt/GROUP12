/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package duchan.controller;

import duchan.entity.Comment;
import duchan.model.CommentModel;
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
@RequestMapping(value= "/commentController")
public class CommentController {
    private CommentModel commentmodel;

    public CommentController() {
    commentmodel = new CommentModel();
    }

    
    
    @RequestMapping(value= "/getAllComment")
    public ModelAndView getAllComment(){
        ModelAndView mav = new ModelAndView("Comment");
        List<Comment> listComment = commentmodel.getAll();
        mav.addObject("listComment", listComment);
        return mav;
    }
    @RequestMapping(value= "/getAllComment1")
    public ModelAndView getAllComment1(){
        ModelAndView mav = new ModelAndView("full-post");
        List<Comment> listComment = commentmodel.getAll();
        mav.addObject("listComment", listComment);
        return mav;
    }
    @RequestMapping(value="/initInsertComment")
    public ModelAndView  initInsert(){
        ModelAndView mav = new  ModelAndView("NewComment");
        // khoi tao doi tuong Product chua du lieu can them moi
        Comment commentNew = new Comment();
        // add proNew vao mav
        mav.addObject("commentNew", commentNew);
        return mav;
    }
    @RequestMapping(value = "/insertComment.htm")
    public String insertComment(Comment commentNew){
        // thuc hien goi sang model product
        boolean check = commentmodel.insertCommment(commentNew);
        if (check) {
            return "redirect:getAllComment.htm";
        }else{
            return "error";
        }
        
        
    }
    @RequestMapping(value="/initUpdateComment", method = RequestMethod.GET)
    public ModelAndView initUpdate(String commentId){
        ModelAndView mav = new ModelAndView("UpdateComment");
        Comment commentUp = commentmodel.getCommentbyId(commentId);
        mav.addObject("commentUp", commentUp);
        return mav;
    }
    @RequestMapping(value="/updateComment", method = RequestMethod.POST)
    public String updateComment(Comment commentUp){
        // thuc hien update
        boolean  check = commentmodel.updateComment(commentUp);
        if (check) {
            return "redirect:getAllComment.htm";
        }else{
            return "error";
        }
    }
    @RequestMapping(value="/deleteComment.htm")
    public String deleteBanner(String commentId){
        boolean check = commentmodel.deleteComment(commentId);
        if (check) {
            return "redirect:getAllComment.htm";
        }else{
            return "error";
        }
    }
    
}
