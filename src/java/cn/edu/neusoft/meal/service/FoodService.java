package cn.edu.neusoft.meal.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.neusoft.meal.domain.Food;


public interface FoodService {

	List<Food> getHotFoods();

	List<Food> getSaleFoods();

	List<Food> getRecommedFoods();

	List<Food> getFindFoods(String s_fn, String s_type);

	boolean addFood(Food food);


	boolean delfood(int id);

	boolean editFood(Food food);

	Food geteditFood(int id);
}
