package cn.edu.neusoft.meal.ctrl;

import cn.edu.neusoft.meal.domain.User;
import cn.edu.neusoft.meal.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class UserAction {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/griefgrocerystore/admin/user_list")
	public ModelAndView list(String s_un,String pageno){
		System.out.print(s_un);
		long page=userService.getPage(s_un);
		int page_no;
		if(pageno!=null){
			page_no=Integer.parseInt(pageno);
		}else{
			page_no=0;
		}
		List<User> users=
				userService.findUser(s_un,page_no);
		ModelAndView mv= new ModelAndView("griefgrocerystore/admin/admin_list_user");
		mv.addObject("users", users);
		mv.addObject("pages",page);
		return mv;
	}

	@RequestMapping("/griefgrocerystore/admin/user_edit_form")
	public ModelAndView editUserform(int id){
		ModelAndView mv=new ModelAndView("griefgrocerystore/admin/admin_edit_user");
		User user=userService.findUserbByid(id);
		mv.addObject("user",user);
		return mv;
	}

	@RequestMapping("/griefgrocerystore/admin/user_edit")
	public ModelAndView editUser(User user){
		ModelAndView mv=new ModelAndView("griefgrocerystore/result");
		String msg="";
		boolean s=userService.editUser(user);
		if(s){
			msg="修改成功";
		}else{
			msg="修改失败";
		}
		String href = "/griefgrocerystore/admin/user_list.html";
		mv.addObject("msg", msg);
		mv.addObject("href", href);
		return mv;
	}

	@RequestMapping("/griefgrocerystore/admin/user_add_form")
	public ModelAndView addform(){
		ModelAndView mv=new ModelAndView("griefgrocerystore/admin/admin_add_user");
		return mv;
	}

	@RequestMapping("/griefgrocerystore/admin/user_add")
	public ModelAndView adduser(User user,HttpServletRequest request){
		ModelAndView mv=new ModelAndView("griefgrocerystore/result");
			boolean s=userService.addUser(user);
			String msg="";
			if(s){
				msg="添加成功";
			}else{
				msg="添加失败";
			}
			String href = request.getContextPath()+"/griefgrocerystore/admin/user_list.html";
			mv.addObject("msg", msg);
			mv.addObject("href", href);

		return mv;
	}

	@RequestMapping("/griefgrocerystore/admin/user_del")
	public ModelAndView delUser(HttpServletRequest request){
		ModelAndView mv=new ModelAndView("griefgrocerystore/result");
		int del_id= Integer.parseInt(request.getParameter("id"));
		boolean s=userService.deluser(del_id);
		String msg="";
		if(s){
			msg="删除成功";
		}else{
			msg="删除失败";
		}
		String href = request.getContextPath()+"/griefgrocerystore/admin/user_list.html";
		mv.addObject("msg", msg);
		mv.addObject("href", href);
		return mv;
	}


}