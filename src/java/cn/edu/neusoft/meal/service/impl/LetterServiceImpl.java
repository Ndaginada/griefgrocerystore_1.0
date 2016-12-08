package cn.edu.neusoft.meal.service.impl;

import java.util.List;

import cn.edu.neusoft.meal.domain.Letter;
import cn.edu.neusoft.meal.service.LetterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.neusoft.meal.mapper.LetterDao;

@Service
@Transactional
public class LetterServiceImpl implements LetterService {
@Autowired
private LetterDao dao;


}
