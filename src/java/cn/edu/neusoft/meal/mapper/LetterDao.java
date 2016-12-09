package cn.edu.neusoft.meal.mapper;

import cn.edu.neusoft.meal.domain.Letter;

import java.util.List;

public interface LetterDao {

    int getMaxId();

    boolean addletter(Letter letter);


    List<Letter> FindLetters(String a_ln);

    List<Letter> FindLettersByUser(String u_name);
}
