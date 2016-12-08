package cn.edu.neusoft.meal.service;

import java.util.List;

import cn.edu.neusoft.meal.domain.Letter;


public interface LetterService {

	List<Letter> getHotFoods();

	List<Letter> getSaleFoods();

	List<Letter> getRecommedFoods();

	List<Letter> getFindFoods(String s_fn, String s_type);

	boolean addFood(Letter letter);


	boolean delfood(int id);

	boolean editFood(Letter letter);

	Letter geteditFood(int id);
}
