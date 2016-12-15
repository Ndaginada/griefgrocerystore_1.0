package cn.edu.neusoft.meal.service.impl;

import cn.edu.neusoft.meal.domain.Stamp;
import cn.edu.neusoft.meal.domain.StampAndUser;
import cn.edu.neusoft.meal.domain.User;
import cn.edu.neusoft.meal.mapper.StampAndUserDao;
import cn.edu.neusoft.meal.mapper.StampDao;
import cn.edu.neusoft.meal.mapper.UserDao;
import cn.edu.neusoft.meal.service.StampService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Kkai on 2016/12/8.
 */

@Service
public class StampImpl implements StampService{

    @Autowired
    private StampDao dao;
    @Autowired
    private StampAndUserDao saudao;
    @Autowired
    private UserDao udao;


    @Override
    public List<Stamp> listAll() {
        return dao.listAll();
    }

    @Override
    public Stamp findStampByid(int id) {
        return dao.findStampByid(id);
    }

    @Override
    public boolean buyStamp(Stamp stamp, User user,StampAndUser sau) {
        int sau_next=saudao.getMaxId()+1;
        sau.setId(sau_next);
        int score = user.getScore()-stamp.getStampscore();
        user.setScore(score);
        if (saudao.buystamp(sau)&&udao.subScore(user)){
            return true;
        }else {
            return false;
        }
    }

    @Override
    public List<StampAndUser> findStampAndUser(int u_id) {
        return saudao.findStampAndUserByid(u_id);
    }


//    @Override
//    public boolean buyStamp(User user,) {
//        if (saudao.buystamp()&&udao.buystamp()){
//            return true;
//        }else {
//            return false;
//        }
//    }
}
