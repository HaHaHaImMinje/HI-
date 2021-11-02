package sist.com.dao;

import java.util.HashMap;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class TransActionDao extends SqlSessionDaoSupport {
	
	 @Resource(name="sqlSessionTemplate")
	   protected void initDao(SqlSessionTemplate st) throws Exception {
	      this.setSqlSessionTemplate(st);
	   }
	   public void insertTransaction(HashMap<String,Object>map) {
	      this.getSqlSession().insert("insertTransaction",map);
	   }
	   public void updateTransaction(HashMap<String,Object>map) {
	      this.getSqlSession().insert("updateTransaction",map);
	   }


}
