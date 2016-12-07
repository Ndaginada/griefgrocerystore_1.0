package cn.edu.neusoft.meal.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.neusoft.meal.domain.Type;
import cn.edu.neusoft.meal.mapper.TypeDao;
import cn.edu.neusoft.meal.service.TypeService;
@Service
public class TypeServiceImpl implements TypeService {
   @Autowired
   private TypeDao dao;
	@Override
	public List<Type> getAllTypes() {
		// TODO Auto-generated method stub
		return dao.getAllTypes();
	}

}
