package cn.edu.neusoft.meal.service;

import cn.edu.neusoft.meal.domain.User;

import java.util.List;

public interface UserService {

	User validate(User user);

	List<User> findUser(String s_un,int pageno);

    boolean addUser(User user);

    boolean deluser(int del_id);

    User findUserbByid(int id);

    User findUserByLeter(int l_id);

    boolean editUser(User user);

    long getPage(String s_un);

    boolean adddScore(int user_id);

    User findUserByName(String belonguser);

    List<User> getAllUser();
}
