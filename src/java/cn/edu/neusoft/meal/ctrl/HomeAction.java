package cn.edu.neusoft.meal.ctrl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.neusoft.meal.domain.User;
import cn.edu.neusoft.meal.service.LetterService;
import cn.edu.neusoft.meal.service.UserService;

@Controller
public class HomeAction {
	//nihao
	@Autowired
	private LetterService letterService;
	@Autowired
	private UserService userService;
	@RequestMapping("/index")
	public ModelAndView indexre(){
		ModelAndView mv=new ModelAndView("index");
		return mv;
	}

	@RequestMapping("/griefgrocerystore/index")
	public ModelAndView index(){
		ModelAndView mv=new ModelAndView("griefgrocerystore/index");
		return mv;
	}

	@RequestMapping("/griefgrocerystore/hello")
	public ModelAndView homepage(){
		ModelAndView mv=new ModelAndView("griefgrocerystore/hello");
		return mv;
	}

	@RequestMapping("/404")
	public ModelAndView notFound(){
		ModelAndView mv=new ModelAndView("404");
		return mv;
	}
	@RequestMapping("/500")
	public ModelAndView serverError(){
		ModelAndView mv=new ModelAndView("500");
		return mv;
	}
	@RequestMapping("/griefgrocerystore/login")
	public ModelAndView login(User user,HttpServletRequest request,HttpSession session){
		ModelAndView mv=null;
	     User getUser=userService.validate(user);
//	     System.out.print(getUser+"     "+user);
				if (getUser == null) {
						mv=new ModelAndView("griefgrocerystore/result");
						mv.addObject("msg","账号密码错误");
						mv.addObject("href","/griefgrocerystore/index.html");
					} else {
						// 登录成功
						String ident = (String) getUser.getIdent();

						// 用session保存用户的登录信息
						session.setAttribute("loginName", getUser.getUserName());
						session.setAttribute("ident", ident);
						if (ident.equals("1")) {
							 mv=new ModelAndView("/griefgrocerystore/admin/index");
						} else {
							// 普通用户
							mv=new ModelAndView("/griefgrocerystore/hello");
						}
					}
		return mv;
	}
//	@RequestMapping("/mealsystem/logout")
//	public ModelAndView logout(HttpSession session){
//		session.invalidate();
//		ModelAndView mv=new ModelAndView("redirect:homepage.html");
//		return mv;
//	}

	@RequestMapping("/griefgrocerystore/register_form")
	public ModelAndView register_form(HttpSession session){
		ModelAndView mv=new ModelAndView("griefgrocerystore/zhuce");
		return mv;
	}

	@RequestMapping("/griefgrocerystore/register")
	public ModelAndView register(User user,HttpServletRequest request){
		ModelAndView mv=new ModelAndView("griefgrocerystore/result");
		boolean s=userService.addUser(user);
		String msg="";
		if(s){
			msg="注册成功";
		}else{
			msg="注册失败";
		}
		String href = request.getContextPath()+"/griefgrocerystore/beforReg.html";
		mv.addObject("msg", msg);
		mv.addObject("href", href);
		return mv;
	}

	@RequestMapping("/griefgrocerystore/beforReg")
	public ModelAndView beforReg(){
		ModelAndView mv=new ModelAndView("griefgrocerystore/loginBeforReg");
		return mv;
	}


}
