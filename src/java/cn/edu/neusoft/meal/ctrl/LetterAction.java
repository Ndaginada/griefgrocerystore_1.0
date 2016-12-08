package cn.edu.neusoft.meal.ctrl;

import cn.edu.neusoft.meal.domain.Letter;
import cn.edu.neusoft.meal.domain.Type;
import cn.edu.neusoft.meal.service.LetterService;
import cn.edu.neusoft.meal.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class LetterAction {
	@Autowired 
	private LetterService letterService;
	@Autowired 
	private TypeService typeService;
	@RequestMapping("/mealsystem/admin/food_list")
	public ModelAndView list(String s_fn,String s_type){
		
		ModelAndView mv=new ModelAndView("mealsystem/admin/admin_list_food");
		List<Letter> letters = letterService.getFindFoods(s_fn,s_type);
		List<Type> types=typeService.getAllTypes();
		mv.addObject("foods", letters);
		mv.addObject("types", types);
		return mv;
		
	}
	@RequestMapping("/mealsystem/admin/food_add_form")
	public ModelAndView addFoodForm(){
		ModelAndView mv=new ModelAndView("mealsystem/admin/admin_add_food");
		List<Type> types=typeService.getAllTypes();
		mv.addObject("types", types);
		return mv;
		
	}


	@RequestMapping("/mealsystem/admin/food_add")
	public ModelAndView addFood(Letter letter, MultipartFile img, HttpServletRequest request){
//		ModelAndView mv=new ModelAndView("redirect:food_list.html");
//		try {
//		String relativePath="images/uploads";
//		String savePath = request.getServletContext().getRealPath(relativePath);
//		String filename =img.getOriginalFilename().substring(img.getOriginalFilename().indexOf("/")+1);
//		// 创建保存的文件
//
//		File file = new File(savePath, filename);
//		letter.setPicture(relativePath+"/"+filename);
//		img.transferTo(file);
//		letterService.addFood(letter);
//		} catch (IllegalStateException | IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return mv;
		ModelAndView mv=new ModelAndView("mealsystem/result");
		try {
			String relativePath="images/uploads";
			String savePath = request.getServletContext().getRealPath(relativePath);
			String filename =img.getOriginalFilename().substring(img.getOriginalFilename().indexOf("/")+1);

			// 创建保存的文件

			File file = new File(savePath, filename);
			letter.setPicture(relativePath+"/"+filename);
			img.transferTo(file);
			boolean s= letterService.addFood(letter);
			String msg="";
			if(s){
				msg="添加成功";
			}else{
				msg="添加失败";
			}
			String href = request.getContextPath()+"/mealsystem/admin/food_list.html";
			mv.addObject("msg", msg);
			mv.addObject("href", href);

		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		return mv;
	}

	@RequestMapping("/mealsystem/admin/food_del")
	public ModelAndView delFood(HttpServletRequest request){
		ModelAndView mv=new ModelAndView("mealsystem/result");
		int del_id= Integer.parseInt(request.getParameter("id"));
		boolean s= letterService.delfood(del_id);
		String msg="";
		if(s){
			msg="删除成功";
		}else{
			msg="删除失败";
		}
		String href = request.getContextPath()+"/mealsystem/admin/food_list.html";
		mv.addObject("msg", msg);
		mv.addObject("href", href);
		return mv;
	}
	@RequestMapping("/mealsystem/admin/food_edit_form")
	public ModelAndView editfoodform(HttpServletRequest request){
		ModelAndView mv=new ModelAndView("mealsystem/admin/admin_edit_food");
		int id= Integer.parseInt(request.getParameter("id"));
        List<Type> types=typeService.getAllTypes();
        mv.addObject("types", types);
        Letter letter = letterService.geteditFood(id);
		mv.addObject("foods", letter);
		return mv;
	}
	@RequestMapping("/mealsystem/admin/food_edit")
	public ModelAndView editfood(Letter foods, MultipartFile img, HttpServletRequest request) {
        ModelAndView mv = new ModelAndView("mealsystem/result");

        try {
            String relativePath = "images/uploads";
            String savePath = request.getServletContext().getRealPath(relativePath);
            String filename = img.getOriginalFilename().substring(img.getOriginalFilename().indexOf("/") + 1);
            // 创建保存的文件

            File file = new File(savePath, filename);
            foods.setPicture(relativePath + "/" + filename);
            img.transferTo(file);
            boolean s = letterService.editFood(foods);
            String msg = "";
            if (s) {
                msg = "修改成功";
            } else {
                msg = "修改失败";
            }
            String href = request.getContextPath() + "/mealsystem/admin/food_list.html";
            mv.addObject("msg", msg);
            mv.addObject("href", href);

        } catch (IllegalStateException | IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        return mv;
       }
    }