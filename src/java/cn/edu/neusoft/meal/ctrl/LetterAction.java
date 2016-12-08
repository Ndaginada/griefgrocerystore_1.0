package cn.edu.neusoft.meal.ctrl;

import cn.edu.neusoft.meal.service.LetterService;
import cn.edu.neusoft.meal.service.LatterPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class LetterAction {
	@Autowired 
	private LetterService letterService;
	@Autowired 
	private LatterPageService typeService;

    }
