package cn.edu.neusoft.meal.mapper;

import java.util.List;
import java.util.Map;

import cn.edu.neusoft.meal.domain.Food;

public interface FoodDao {
	public List<Food> getHotFoods();
	public List<Food> getSalesFoods();
	public List<Food> getRecommedFoods() ;
	public List<Food> getAllFoods();
	public boolean delFood(int del_id);
	public int getMaxId();
	public boolean addFood(Food food);
	public List<Food> FindFoods(String s_fn, String s_type);
    Food getEditFood(int id);
	boolean editFood(Food food);
}
