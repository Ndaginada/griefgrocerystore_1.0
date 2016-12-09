package cn.edu.neusoft.meal.service;

import cn.edu.neusoft.meal.domain.Letter;
import cn.edu.neusoft.meal.domain.LetterAndUser;

import java.util.List;

public interface LetterService {


    boolean addletter(Letter letter,LetterAndUser lau);

    List<Letter> getFindLetters(String a_ln);

    List<Letter> getFindLetterByUser(String u_name);
}
