package cn.edu.neusoft.core.mapper;

import java.util.List;

import cn.edu.neusoft.core.domain.OrmVO;

public interface OrmDao {

	public List<String> listTables(OrmVO vo);
	public List<OrmVO> listTableCols(OrmVO vo);
	
}
