package cn.edu.neusoft.meal.mapper;

import java.util.List;

import cn.edu.neusoft.meal.domain.Letter;

public interface LetterDao {
	public List<Letter> getHotFoods();
	public List<Letter> getSalesFoods();
	public List<Letter> getRecommedFoods() ;
	public List<Letter> getAllFoods();
	public boolean delFood(int del_id);
	public int getMaxId();
	public boolean addFood(Letter letter);
	public List<Letter> FindFoods(String s_fn, String s_type);
    Letter getEditFood(int id);
	boolean editFood(Letter letter);
}
