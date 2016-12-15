package cn.edu.neusoft.meal.mapper;

import cn.edu.neusoft.meal.domain.Letter;
import cn.edu.neusoft.meal.domain.LetterAndUser;

import java.util.List;

public interface LetterDao {

    int getMaxId();

    boolean addletter(Letter letter);


    List<Letter> FindLetters(String a_ln,int pageno);

    List<Letter> FindLettersByUser(String u_name);

    Letter FindLetterById(int id);

    boolean DelLetter(int del_id);

    boolean DelLetterRelation(LetterAndUser lau);


    long getLetterCount(String a_ln);

    boolean editLetter(Letter letter);

    List<Letter> getAllLetter();
}
