package cn.edu.neusoft.meal.mapper;

import cn.edu.neusoft.meal.domain.User;

import java.util.List;

public interface UserDao {

	User getUserByNameAndPassword(User user);


	List<User> findUser( String s_un, int pageno);

    boolean addUser(User user);

	int getMaxId();

	boolean delUser(int del_id);

    User findUserByid(int id);

    boolean editUser(User user);

	long getUserCount(String s_un);

    User findUserByLeter(int l_id);

	boolean subScore(User user);

	boolean addScore(int user_id,int score);

	User findUserByName(String u_name);

	List<User> getAllUser();
}
