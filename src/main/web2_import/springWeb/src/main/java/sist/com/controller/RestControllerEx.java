package sist.com.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import sist.com.dao.BoardDao;
import sist.com.dao.ReplyAajaxDao;
import sist.com.vo.ReplyVO;
import sist.com.vo.ScrapVO;
import sist.com.vo.StudentVO;


@RestController
public class RestControllerEx {
	@Inject
	private BoardDao dao;
	@Autowired 
	private ReplyAajaxDao ajaxDao;   
	@RequestMapping(value="ajaxMessage.do")
	public String restMessageAction() {
		return "HelloRestController";
	}	
	@RequestMapping(value="ajaxAlert.do")
	public String restMessageAction2() {
		return "<script>function fun(){alert('Hello')}</script>";
	}
	@RequestMapping(value="ajaxJson.do")
	public ScrapVO restMessageAction3() {		
		return new ScrapVO(1,"blue","10");
	}
	@RequestMapping(value="studentList.do")
	public List  studentListAction() {
		return dao.selectStudAction();
	}
	@RequestMapping(value="EmpList.do")
	public List<HashMap<String, Object>>  empListAction() {
		  ArrayList<HashMap<String, Object>>list=new ArrayList<HashMap<String,Object>>();
		  HashMap<String, Object>map=new HashMap<String, Object>();
		  map.put("empno", 7878);
		  map.put("ename", "smith");
		  map.put("sal", 5000);		  
		  list.add(map);
		return list;
	}
	
	
	@GetMapping(value="DeptInfo.do")
	public HashMap<String, Object>deptInfoAction(int no){
		System.out.println("no="+no);
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("deptno",10);
		map.put("dname","������");
		map.put("loc","�λ�");		
		return map;
	}
	@PostMapping(value="ajaxLogin.do")
	public String ajaxLoginAction(String id,String pw,HttpSession session) {
		 boolean state=dao.loginBoard(id, pw);
		 if(state) {
			 session.setAttribute("id", id);
			 session.setMaxInactiveInterval(60);
			 return "success";
		 }
		 
		return "fail";
	}
	@RequestMapping(value="ajaxDelete.do")
	public List<ReplyVO> ajaxDeleteList(int no) {
		ajaxDao.ajaxDelete(no);
		return ajaxDao.selectAjaxReply();
	}
	@RequestMapping(value="ajaxDefaultList.do")
	public List<ReplyVO> ajaxDefaultList() {		
		return ajaxDao.selectAjaxReply();
	}
	
	@RequestMapping(value="ajaxReplyInsert.do")
	public List<ReplyVO> ajaxInsertList(ReplyVO vo) {
		System.out.println(vo);
		vo.setNo(ajaxDao.getAjaxSequence());
		
		if(vo.getJob().equals("new")) {
				vo.setPnum(vo.getNo());
			vo.setRef(vo.getNo());
		}
		System.out.println(vo);
		ajaxDao.insertAjaxReply(vo);		
		return ajaxDao.selectAjaxReply();
	}
	
}















