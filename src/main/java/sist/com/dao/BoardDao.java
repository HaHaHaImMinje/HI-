package sist.com.dao;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import sist.com.vo.MvcBoardVO;
import sist.com.vo.ScrapVO;
import sist.com.vo.StudentVO;

@Repository
public class BoardDao extends SqlSessionDaoSupport {

	@Resource(name = "sqlSessionTemplate")
	protected void initDao(SqlSessionTemplate sessionTemplate) throws Exception {
		System.out.println("initDao()");
		this.setSqlSessionTemplate(sessionTemplate);
	}

	public void insertBoard(MvcBoardVO vo) {
		System.out.println(this.getSqlSession());
		System.out.println("vo : " + vo);
		this.getSqlSession().insert("insertBoard", vo);
		System.out.println("success");
	}

	public List<MvcBoardVO> selectBoard() {
		return this.getSqlSession().selectList("selectBoard");
	}

	public void updateHit(int no) {
		this.getSqlSession().update("updateHit", no);
	}

	public MvcBoardVO selectInfoBoard(int no) {
		return this.getSqlSession().selectOne("selectInfoBoard", no);
	}

	public boolean loginBoard(String id, String password) { // 로그인
		System.out.println("입력한 ID, Password : " + id + ", " + password);
		String dbPass = this.getSqlSession().selectOne("loginBoard", id);
		if (dbPass == null)
			System.out.println("등록되어 있지 않습니다.");
		else {
			System.out.println("로그인 시도한 ID의 등록된 비밀번호 : " + dbPass);
		}
		return dbPass != null && dbPass.equals(password);
	}

	public Integer getSequence() { // insert 되기전에
		return this.getSqlSession().selectOne("getSequence");
	}

	public void updateReply(HashMap<String, Object> map) {
		this.getSqlSession().update("updateReply", map);

	}

	public void updateStep(HashMap<String, Object> map) {
		this.getSqlSession().update("updateStep", map);
	}

	public String getPassWord(int no) {
		return this.getSqlSession().selectOne("getPassWord", no);

	}

	public Integer getParentNumber(int no) {
		return this.getSqlSession().selectOne("getParentNumber", no);
	}

	public void deleteBoard(int no) {
		this.getSqlSession().delete("deleteBoard", no);
	}

	public void updateBoard(MvcBoardVO vo) {
		this.getSqlSession().update("updateBoard", vo);
	}

	public boolean idCheckData(String id) {
		return this.getSqlSession().selectOne("idCheckData", id) != null;
	}

	public void insertScrap(HashMap<String, Object> map) {
		this.getSqlSession().insert("insertScrap", map);
	}

	public String getScrapNumber(String id) {
		return this.getSqlSession().selectOne("getScrapNumber", id);
	}

	public void updateScrap(ScrapVO v) {
		this.getSqlSession().update("updateScrap", v);
	}

	public List<MvcBoardVO> selectMyPage(HashMap<String, Object> map) {
		return getSqlSession().selectList("selectMyPage", map);
	}

	public List selectStudAction() {
		return getSqlSession().selectList("selectStudAction");
	}

}
