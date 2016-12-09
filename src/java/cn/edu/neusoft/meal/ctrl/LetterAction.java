package cn.edu.neusoft.meal.ctrl;

import cn.edu.neusoft.meal.domain.Letter;
import cn.edu.neusoft.meal.domain.LetterAndUser;
import cn.edu.neusoft.meal.domain.User;
import cn.edu.neusoft.meal.service.LetterService;
import cn.edu.neusoft.meal.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class LetterAction {
	@Autowired 
	private LetterService letterService;
	@Autowired 
	private UserService userService;

	@RequestMapping("/griefgrocerystore/user/writeletter")
	public ModelAndView write(){
		ModelAndView mv=new ModelAndView("/griefgrocerystore/user/user_write");
		return mv;
	}

	@RequestMapping("/griefgrocerystore/user/writeletter_do")
	public ModelAndView write_do(Letter letter,int user_id,LetterAndUser lau){
		ModelAndView mv=new ModelAndView("/griefgrocerystore/result");
		lau.setUserid(user_id);
		boolean s=letterService.addletter(letter,lau);
		String msg="";
		if(s){
			msg="提交成功";
		}else{
			msg="提交失败";
		}
		String href = "/griefgrocerystore/hello.html";
		mv.addObject("msg", msg);
		mv.addObject("href", href);
		return mv;
	}

	@RequestMapping("/griefgrocerystore/user/my_info")
	public ModelAndView mtinfo(HttpSession session){
		ModelAndView mv=new ModelAndView("griefgrocerystore/user/user_my");
		String u_name= (String) session.getAttribute("loginName");
//		System.out.print("###########"+u_name);
		List<Letter> letters=letterService.getFindLetterByUser(u_name);
//		System.out.print("###########"+letters.get(0).getLettercontext());
		int u_id= (int) session.getAttribute("loginId");
		User user=userService.findUserbByid(u_id);
		mv.addObject("letters",letters);
		mv.addObject("user",user);
		return mv;
	}

	@RequestMapping("/griefgrocerystore/admin/letter_list")
	public ModelAndView letter_list(String a_ln){
		ModelAndView mv=new ModelAndView("/griefgrocerystore/admin/admin_list_letter");
		List<Letter> leters=letterService.getFindLetters(a_ln);
		mv.addObject("letters",leters);
		return mv;
	}


}
