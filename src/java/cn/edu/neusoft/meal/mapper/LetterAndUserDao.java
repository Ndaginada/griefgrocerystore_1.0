package cn.edu.neusoft.meal.mapper;

import cn.edu.neusoft.meal.domain.LetterAndUser;

/**
 * Created by Kkai on 2016/12/9.
 */
public interface LetterAndUserDao {
    int getMaxRId();
    boolean addrelation(LetterAndUser lau);
}
