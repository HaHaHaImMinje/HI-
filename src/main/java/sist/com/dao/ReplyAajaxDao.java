package sist.com.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import sist.com.vo.ReplyVO;

@Repository
public class ReplyAajaxDao extends SqlSessionDaoSupport {

	@Inject
	protected void initDao(SqlSessionTemplate st) throws Exception {
		this.setSqlSessionTemplate(st);
	}

	public Integer getAjaxSequence() {
		System.out.println("dongjak2");
		return this.getSqlSession().selectOne("getAjaxSequence"); 
	} 

	public void insertAjaxReply(ReplyVO vo) {
		this.getSqlSession().insert("insertAjaxReply", vo);
	}

	public List<ReplyVO> selectAjaxReply() {
		return this.getSqlSession().selectList("selectAjaxReply");
	}

	public void ajaxDelete(int no) {
		this.getSqlSession().delete("ajaxDelete",no);
	}
}
