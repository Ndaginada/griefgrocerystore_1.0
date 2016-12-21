package cn.edu.neusoft.meal.ctrl;

import cn.edu.neusoft.meal.domain.Letter;
import cn.edu.neusoft.meal.domain.Reply;
import cn.edu.neusoft.meal.domain.User;
import cn.edu.neusoft.meal.service.LetterService;
import cn.edu.neusoft.meal.service.ReplyService;
import cn.edu.neusoft.meal.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@Controller
public class ReplyAction {
    @Autowired
    private ReplyService replyService;
    @Autowired
    private LetterService letterService;
    @Autowired
    private UserService userService;


    @RequestMapping("/griefgrocerystore/user/reply")
    public ModelAndView reply(Reply reply,String belonguser){
        ModelAndView mv=new ModelAndView("/griefgrocerystore/result");
        User user=userService.findUserByName(belonguser);
        reply.setBelonguserid(user.getId());
        boolean s=replyService.addReply(reply);
        String msg="";
        if(s){
            msg="回复成功";
        }else{
            msg="回复失败";
        }
        String href = "/griefgrocerystore/user/reply_look.html?l_id="+reply.getLetterid()+"&u_id="+reply.getReplyuserid();
        mv.addObject("msg", msg);
        mv.addObject("href", href);
        return mv;
    }

    @RequestMapping("/griefgrocerystore/user/reply_look")
    public ModelAndView reply_look(int l_id,int u_id){
        ModelAndView mv=new ModelAndView("/griefgrocerystore/user/user_reply_list");
        Letter letter=letterService.getFindLetterById(l_id);
        List<Reply> reply=replyService.getReplyByLetter(l_id);
        if(reply!=null){
            mv.addObject("replys",reply);
        }
        mv.addObject("letter",letter);
        return mv;
    }

    @RequestMapping("/griefgrocerystore/user/reply_letter")
    public ModelAndView reply_letter_name(int l_id){
        ModelAndView mv=new ModelAndView("/griefgrocerystore/user/user_my_reply_lettername");
        Letter letter=letterService.getFindLetterById(l_id);
        mv.addObject("letter",letter);
        return mv;
    }
    @RequestMapping("/griefgrocerystore/user/reply_user_name")
    public ModelAndView reply_user_name(int u_id){
        ModelAndView mv=new ModelAndView("/griefgrocerystore/user/user_my_reply_username");
        User user=userService.findUserbByid(u_id);
        mv.addObject("user",user);
        return mv;
    }

    @RequestMapping("/griefgrocerystore/user/reply_user")
    public ModelAndView reply_user(int id){
        ModelAndView mv=new ModelAndView("/griefgrocerystore/user/user_replyuser");
        User user=userService.findUserbByid(id);
        mv.addObject("user",user);
        return mv;
    }

    @RequestMapping("/griefgrocerystore/admin/reply_list")
    public ModelAndView reply_list(String a_ln,String pageno){
        ModelAndView mv=new ModelAndView("/griefgrocerystore/admin/admin_list_reply");
        long page=replyService.getPage(a_ln);
        int page_no;
        if(pageno!=null){
            page_no=Integer.parseInt(pageno);
        }else{
            page_no=0;
        }
        List<Reply> reply
                =replyService.getFindReply(a_ln,page_no);
        mv.addObject("rpages",page);
        mv.addObject("replys",reply);
        return mv;
    }

    @RequestMapping("/griefgrocerystore/admin/reply_del")
    public ModelAndView delUser(int id){
        ModelAndView mv=new ModelAndView("griefgrocerystore/result");
        boolean s=replyService.delReply(id);
        String msg="";
        if(s){
            msg="删除成功";
        }else{
            msg="删除失败";
        }
        String href = "/griefgrocerystore/admin/reply_list.html";
        mv.addObject("msg", msg);
        mv.addObject("href", href);
        return mv;
    }
}
