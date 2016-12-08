package cn.edu.neusoft.meal.service.impl;

import cn.edu.neusoft.meal.mapper.LatterPageDao;
import cn.edu.neusoft.meal.service.LatterPageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class LatterPageServiceImpl implements LatterPageService {
   @Autowired
   private LatterPageDao dao;


}
