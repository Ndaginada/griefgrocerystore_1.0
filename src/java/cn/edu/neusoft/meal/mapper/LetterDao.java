package cn.edu.neusoft.meal.mapper;

import cn.edu.neusoft.meal.domain.Letter;

import java.util.List;

public interface LetterDao {
	 List<Letter> getHotFoods();
	 List<Letter> getSalesFoods();
	 List<Letter> getRecommedFoods() ;
	 List<Letter> getAllFoods();
	 boolean delFood(int del_id);
	 int getMaxId();
	 boolean addFood(Letter letter);
	 List<Letter> FindFoods(String s_fn, String s_type);
    Letter getEditFood(int id);
	boolean editFood(Letter letter);
}
