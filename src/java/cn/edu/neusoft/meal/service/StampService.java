package cn.edu.neusoft.meal.service;

import cn.edu.neusoft.meal.domain.Stamp;
import cn.edu.neusoft.meal.domain.StampAndUser;
import cn.edu.neusoft.meal.domain.User;

import java.util.List;

/**
 * Created by Kkai on 2016/12/8.
 */
public interface StampService {

    List<Stamp> listAll();

    Stamp findStampByid(int id);

    boolean buyStamp(Stamp stamp, User user, StampAndUser sau);

    List<StampAndUser> findStampAndUser(int u_id);

    List<Stamp> findStampByUserName(String loginName);

    long getPage(String a_ln);

    List<Stamp> getFindStamps(String a_ln, int page_no);

    boolean addStamp(Stamp stamp);

    boolean delStamp(int id);

    boolean editStamp(Stamp stamp);
}
