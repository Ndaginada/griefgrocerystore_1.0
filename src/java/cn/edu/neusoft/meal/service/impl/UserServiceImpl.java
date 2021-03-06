package cn.edu.neusoft.meal.service.impl;

import cn.edu.neusoft.meal.domain.User;
import cn.edu.neusoft.meal.mapper.UserDao;
import cn.edu.neusoft.meal.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserServiceImpl implements UserService {
@Autowired
 private UserDao dao;
	@Override
	public User validate(User user) {
		// TODO Auto-generated method stub
		return dao.getUserByNameAndPassword(user);
	}
	@Override
	public List<User> findUser(String s_un,int pageno) {
		// TODO Auto-generated method stub

		if(s_un==null){
			s_un="%%";
		}else{
			s_un="%"+s_un+"%";
		}
		pageno=pageno*5;
		return dao.findUser(s_un,pageno);

	}
	@Override
	public User findUserByLeter(int l_id) {
		return dao.findUserByLeter(l_id);

	}
	@Override
	public boolean addUser(User user) {
		int next=dao.getMaxId()+1;
		user.setId(next);
		if (dao.addUser(user)){
			return true;
		}else {
			return false;
		}
	}

	@Override
	public boolean deluser(int del_id) {
		if (dao.delUser(del_id)){
			return true;
		}else {
			return false;
		}
	}

	@Override
	public User findUserbByid(int id) {
		return dao.findUserByid(id);
	}

	@Override
	public boolean editUser(User user) {
		if (dao.editUser(user)){
			return true;
		}else {
			return false;
		}
	}

	@Override
	public long getPage(String s_un) {
		if(s_un==null){
			s_un="%%";
		}else{
			s_un="%"+s_un+"%";
		}
		long userCount=dao.getUserCount(s_un);
		if(userCount%5==0){
			return userCount/5;
		}else{
			return userCount/5+1;
		}
	}

	@Override
	public boolean adddScore(int user_id,int score) {
		return dao.addScore(user_id,score);
	}

	@Override
	public User findUserByName(String belonguser) {
		return dao.findUserByName(belonguser);
	}

	@Override
	public List<User> getAllUser() {
		return dao.getAllUser();
	}


}
