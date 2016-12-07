package cn.edu.neusoft.meal.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.neusoft.meal.domain.Food;
import cn.edu.neusoft.meal.mapper.FoodDao;
import cn.edu.neusoft.meal.service.FoodService;
@Service
@Transactional
public class FoodServiceImpl implements FoodService {
@Autowired
private FoodDao dao;
	@Override
	public List<Food> getHotFoods() {
		// TODO Auto-generated method stub
		return dao.getHotFoods();
	}

	@Override
	public List<Food> getSaleFoods() {
		// TODO Auto-generated method stub
		return dao.getSalesFoods();
	}

	@Override
	public List<Food> getRecommedFoods() {
		// TODO Auto-generated method stub
		return dao.getRecommedFoods();
	}

	@Override
	public List<Food> getFindFoods(String s_fn, String s_type){
		return dao.FindFoods(s_fn,s_type);
	}

	@Override
	public boolean addFood(Food food) {
		int next=dao.getMaxId()+1;
		food.setId(next);
		if (dao.addFood(food)){
			return true;
		}else {
			return false;
		}
	}

	@Override
	public boolean delfood(int id) {

		if (dao.delFood(id)){
			return true;
		}else {
			return false;
		}
	}

	@Override
	public boolean editFood(Food food) {
//		food.setId();

		if (dao.editFood(food)){
			return true;
		}else {
			return false;
		}
	}

	@Override
	public Food geteditFood(int id) {
		return dao.getEditFood(id);
	}

}
