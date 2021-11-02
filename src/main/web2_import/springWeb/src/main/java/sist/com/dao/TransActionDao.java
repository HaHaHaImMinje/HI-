package sist.com.dao;

import java.util.HashMap;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class TransActionDao extends SqlSessionDaoSupport{
	@Resource(name="sqlSessionTemplate")
	protected void initDao(SqlSessionTemplate st) throws Exception {
		// TODO Auto-generated method stub
		this.setSqlSessionTemplate(st);
	}	
	public void insertTransAction(HashMap<String, Object>map) {
		this.getSqlSession().insert("insertTransAction",map);
		/*map.put("msg", "ModidifyAction");
		this.getSqlSession().update("updateTransAction",map);*/
	}
	public void updateTransAction(HashMap<String, Object>map) {
		this.getSqlSession().update("updateTransAction",map);
	}
}
