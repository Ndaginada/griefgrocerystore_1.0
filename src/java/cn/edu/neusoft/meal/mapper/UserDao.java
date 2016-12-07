package cn.edu.neusoft.meal.mapper;

import java.util.List;

import cn.edu.neusoft.meal.domain.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {

	User getUserByNameAndPassword(User user);


	List<User> findUser( String s_un, int pageno);

    boolean addUser(User user);

	int getMaxId();

	boolean delUser(int del_id);

    User findUserByid(int id);

    boolean editUser(User user);

	long getUserCount(String s_un);
}
