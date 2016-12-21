package cn.edu.neusoft.meal.ctrl;

import cn.edu.neusoft.meal.domain.Letter;
import cn.edu.neusoft.meal.domain.User;
import cn.edu.neusoft.meal.service.LetterService;
import cn.edu.neusoft.meal.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class HomeAction {
	//hi test Github
	@Autowired
	private LetterService letterService;
	@Autowired
	private UserService userService;
	@RequestMapping("/index")
	public ModelAndView indexre(){
		ModelAndView mv=new ModelAndView("redirect");
		return mv;
	}

	@RequestMapping("/griefgrocerystore/index")
	public ModelAndView index(){
		ModelAndView mv=new ModelAndView("griefgrocerystore/index");
		return mv;
	}

	@RequestMapping("/griefgrocerystore/user/hello")
	public ModelAndView homepage(){
		ModelAndView mv=new ModelAndView("griefgrocerystore/user/user_index");
		List<Letter> leters
				=letterService.getAllLetter();
		mv.addObject("letters",leters);
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
						session.setAttribute("loginId",getUser.getId());
						session.setAttribute("ident", ident);
						if (ident.equals("1")) {
							 mv=new ModelAndView("griefgrocerystore/admin/admin_index");
						} else {
							// 普通用户
							mv=new ModelAndView("redirect:user/hello.html");
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
		ModelAndView mv=new ModelAndView("griefgrocerystore/user/user_register");
		return mv;
	}

	@RequestMapping("/griefgrocerystore/register")
	public ModelAndView register(User user,HttpServletRequest request,MultipartFile img){
		ModelAndView mv=new ModelAndView("griefgrocerystore/result");
		try {
			String relativePath="/griefgrocerystore/images/icon";
			String savePath = request.getServletContext().getRealPath(relativePath);
			String filename = img.getOriginalFilename().substring(img.getOriginalFilename().indexOf("/") + 1);
			// 创建保存的文件
			File file = new File(savePath, filename);
			user.setIcon(relativePath + "/" + filename);
			img.transferTo(file);
			boolean s=userService.addUser(user);
			String msg="";
			if(s){
				msg="注册成功";
			}else{
				msg="注册失败";
			}
			String href = "/griefgrocerystore/beforReg.html";
			mv.addObject("msg", msg);
			mv.addObject("href", href);
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/griefgrocerystore/namecheck")
	@ResponseBody
	public String nameCheck(String username){
		String res="";
		List<User> users=userService.getAllUser();
		for (User o:users){
			if (o.getUserName().equals(username)||o.getUserName()==username){
				res="已存在，请重新输入";
				//如果存在则跳出循环
				break;
			}else {
				res="恭喜，此用户名可以注册";
			}
		}
          return res;
	}

	@RequestMapping("/griefgrocerystore/beforReg")
	public ModelAndView beforReg(){
		ModelAndView mv=new ModelAndView("griefgrocerystore/user/user_later_login");
		return mv;
	}

	@RequestMapping("/griefgrocerystore/user/chatroot")
	public ModelAndView chat(){
		ModelAndView mv=new ModelAndView("griefgrocerystore/user/user_chat");
		return mv;
	}
}
