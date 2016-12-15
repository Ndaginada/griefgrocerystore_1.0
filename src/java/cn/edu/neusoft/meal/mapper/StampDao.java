package cn.edu.neusoft.meal.mapper;

import cn.edu.neusoft.meal.domain.Stamp;

import java.util.List;

/**
 * Created by Kkai on 2016/12/8.
 */
public interface StampDao {
    List<Stamp> listAll();

    Stamp findStampByid(int id);
}
