package cn.edu.neusoft.meal.service.impl;

import cn.edu.neusoft.meal.domain.Letter;
import cn.edu.neusoft.meal.domain.LetterAndUser;
import cn.edu.neusoft.meal.mapper.LetterAndUserDao;
import cn.edu.neusoft.meal.mapper.LetterDao;
import cn.edu.neusoft.meal.service.LetterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class LetterServiceImpl implements LetterService {
    @Autowired
    private LetterDao dao;
    @Autowired
    private LetterAndUserDao rdao;




    @Override
    public boolean addletter(Letter letter, LetterAndUser lau) {
        int next=dao.getMaxId()+1;
        letter.setId(next);
        int next2=rdao.getMaxRId()+1;
        lau.setId(next2);
        lau.setLetterid(next);
        if (dao.addletter(letter)&&rdao.addrelation(lau)){
            return true;
        }else {
            return false;
        }
    }

    @Override
    public List<Letter> getFindLetters(String a_ln,int page_no) {
        if(a_ln==null){
            a_ln="%%";
        }else{
            a_ln="%"+a_ln+"%";
        }
        page_no=page_no*10;
        return dao.FindLetters(a_ln,page_no);
    }

    @Override
    public List<Letter> getAllLetter() {
        return dao.getAllLetter();
    }

    @Override
    public List<Letter> getFindLetterByUser(String u_name) {
        return dao.FindLettersByUser(u_name);
    }

    @Override
    public Letter getFindLetterById(int id) {
        return dao.FindLetterById(id);
    }

    @Override
    public boolean delletter(LetterAndUser lau) {
        if (dao.DelLetterRelation(lau)&&dao.DelLetter(lau.getLetterid())){
            return true;
        }else {
            return false;
        }
    }

    @Override
    public long getPage(String a_ln) {
        if(a_ln==null){
            a_ln="%%";
        }else{
            a_ln="%"+a_ln+"%";
        }
        long leterCount=dao.getLetterCount(a_ln);
        if(leterCount%10==0){
            return leterCount/10;
        }else{
            return leterCount/10+1;
        }
    }

    @Override
    public boolean editLetter(Letter letter) {
        if (dao.editLetter(letter)){
            return true;
        }else {
            return false;
        }
    }


}
