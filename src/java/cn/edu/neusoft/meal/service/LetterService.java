package cn.edu.neusoft.meal.service;

import cn.edu.neusoft.meal.domain.Letter;
import cn.edu.neusoft.meal.domain.LetterAndUser;

import java.util.List;

public interface LetterService {


    boolean addletter(Letter letter,LetterAndUser lau);

    List<Letter> getFindLetters(String a_ln,int page_no);

    List<Letter> getFindLetterByUser(String u_name);

    Letter getFindLetterById(int id);

    boolean delletter(LetterAndUser lau);

    long getPage(String a_ln);

    boolean editLetter(Letter letter);
}
