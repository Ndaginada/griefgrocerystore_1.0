package cn.edu.neusoft.meal.service.impl;

import java.util.List;

import cn.edu.neusoft.meal.domain.Letter;
import cn.edu.neusoft.meal.service.LetterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.neusoft.meal.mapper.LetterDao;

@Service
@Transactional
public class LetterServiceImpl implements LetterService {
@Autowired
private LetterDao dao;
	@Override
	public List<Letter> getHotFoods() {
		// TODO Auto-generated method stub
		return dao.getHotFoods();
	}

	@Override
	public List<Letter> getSaleFoods() {
		// TODO Auto-generated method stub
		return dao.getSalesFoods();
	}

	@Override
	public List<Letter> getRecommedFoods() {
		// TODO Auto-generated method stub
		return dao.getRecommedFoods();
	}

	@Override
	public List<Letter> getFindFoods(String s_fn, String s_type){
		return dao.FindFoods(s_fn,s_type);
	}

	@Override
	public boolean addFood(Letter letter) {
		int next=dao.getMaxId()+1;
		letter.setId(next);
		if (dao.addFood(letter)){
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
	public boolean editFood(Letter letter) {
//		letter.setId();

		if (dao.editFood(letter)){
			return true;
		}else {
			return false;
		}
	}

	@Override
	public Letter geteditFood(int id) {
		return dao.getEditFood(id);
	}

}
