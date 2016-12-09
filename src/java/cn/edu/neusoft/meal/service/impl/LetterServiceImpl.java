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
    public List<Letter> getFindLetters(String a_ln) {
        return dao.FindLetters(a_ln);
    }

    @Override
    public List<Letter> getFindLetterByUser(String u_name) {
        return dao.FindLettersByUser(u_name);
    }


}
