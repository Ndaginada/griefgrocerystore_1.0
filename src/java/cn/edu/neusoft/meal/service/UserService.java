package cn.edu.neusoft.meal.service;

import java.util.List;

import cn.edu.neusoft.meal.domain.User;

public interface UserService {

	User validate(User user);

	List<User> findUser(String s_un,int pageno);

    boolean addUser(User user);

    boolean deluser(int del_id);

    User findUserbByid(int id);

    boolean editUser(User user);

    long getPage(String s_un);
}
