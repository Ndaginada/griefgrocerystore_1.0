package cn.edu.neusoft.meal.mapper;

import cn.edu.neusoft.meal.domain.StampAndUser;

import java.util.List;

/**
 * Created by Kkai on 2016/12/9.
 */
public interface StampAndUserDao {

    int getMaxId();

    boolean buystamp(StampAndUser sau);

    List<StampAndUser> findStampAndUserByid(int u_id);
}
