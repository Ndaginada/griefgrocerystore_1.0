package cn.edu.neusoft.meal.ctrl;

import cn.edu.neusoft.meal.domain.Stamp;
import cn.edu.neusoft.meal.domain.StampAndUser;
import cn.edu.neusoft.meal.domain.User;
import cn.edu.neusoft.meal.service.StampService;
import cn.edu.neusoft.meal.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Kkai on 2016/12/8.
 */

@Controller
public class StampAction {
    @Autowired
    private StampService stampService;
    @Autowired
    private UserService userService;


    @RequestMapping("/griefgrocerystore/user/shop")
    public ModelAndView shop(){
        ModelAndView mv=new ModelAndView("griefgrocerystore/user/user_shop");
        List<Stamp> stamps=stampService.listAll();
        mv.addObject("stamps",stamps);
        return mv;
    }


    @RequestMapping("/griefgrocerystore/user/buy_stamp")
    public ModelAndView buy(int id, HttpSession session){
        ModelAndView mv=new ModelAndView("griefgrocerystore/user/user_buy");
        Stamp stamp=stampService.findStampByid(id);
        int u_id= (int) session.getAttribute("loginId");
        User loginUser=userService.findUserbByid(u_id);
//        System.out.print(loginUser.getUserName());
        mv.addObject("stamp",stamp);
        mv.addObject("loginUser",loginUser);
        return mv;
    }

    @RequestMapping("/griefgrocerystore/user/buy_stamp_do")
    public ModelAndView buy_do(Stamp stamp, HttpSession session, StampAndUser sau){
        ModelAndView mv=new ModelAndView("griefgrocerystore/result");
        //当前用户
        int u_id= (int) session.getAttribute("loginId");
        User user=userService.findUserbByid(u_id);
        //获得用户所拥有的东西
        List<StampAndUser> find=stampService.findStampAndUser(u_id);

        sau.setUserid(u_id);
        sau.setStampid(stamp.getStampid());
        String msg="";
        boolean ishave=true;
        if (user.getScore()<stamp.getStampscore()){
            msg="您的积分不足";
        } else {
            for (int i=0;i<find.size();i++){
                if (find.get(i).getStampid()==stamp.getStampid()){
                    msg="您以购买过该商品";
                    ishave=false;
                }
            }
            if (ishave){
                boolean s=stampService.buyStamp(stamp,user,sau);
                if(s){
                    msg="购买成功";
                }else{
                    msg="购买失败,请稍后再试";
                }
            }
        }
        String href = "/griefgrocerystore/user/shop.html";
        mv.addObject("msg", msg);
        mv.addObject("href", href);
        return mv;
    }

    @RequestMapping("/griefgrocerystore/admin/stamp_list")
    public ModelAndView stamp_list(String s_sn,String pageno){
        ModelAndView mv=new ModelAndView("/griefgrocerystore/admin/admin_list_stamp");
        long page=stampService.getPage(s_sn);
        int page_no;
        if(pageno!=null){
            page_no=Integer.parseInt(pageno);
        }else{
            page_no=0;
        }
        List<Stamp> stamps
                =stampService.getFindStamps(s_sn,page_no);
        mv.addObject("stamps",stamps);
        mv.addObject("spages",page);
        return mv;
    }


}
