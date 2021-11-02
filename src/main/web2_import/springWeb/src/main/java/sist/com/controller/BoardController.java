package sist.com.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.HashSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import sist.com.dao.BoardDao;
import sist.com.vo.MvcBoardVO;
import sist.com.vo.ScrapVO;

@Controller
public class BoardController {
	@Autowired
	private BoardDao dao;
	//@RequestMapping(value="/boardMVC/boardLogin.do",method= {RequestMethod.GET,RequestMethod.POST})
	//@GetMapping(value="/boardMVC/boardLogin.do")
	@PostMapping(value="/boardMVC/boardLogin.do")
	public String logCheck(HttpSession session,HttpServletRequest request) {	
		boolean state=dao.loginBoard(request.getParameter("id"),request.getParameter("password"));
		if(state) {
			session.setAttribute("id", request.getParameter("id"));
			session.setMaxInactiveInterval(6000);
		}
		return state?"redirect:boardList.do":"redirect:signin.jsp";
	}
	@RequestMapping(value="/boardMVC/boardList.do")
	public String boardListAction(Model model) {
		
		model.addAttribute("boardList", dao.selectBoard());
		return "boardMVC/board";
	}
	@GetMapping(value="boardMVC/boardInfo.do")
	public String boardInfoAction(int no,Model model,String job) {
	    
		model.addAttribute("info",dao.selectInfoBoard(no) );
		if(job.equals("info")) {
		    dao.updateHit(no);			
			return "boardMVC/info";
		}else {
			return "boardMVC/modify";
		}		
	}
	@RequestMapping(value="downLoadAction.do")
	public ModelAndView downLoadProcess(String fileName) {
		String location="D:\\javaLessonProject\\springLesson2\\springWeb\\src\\main\\webapp\\upload\\";
		File file=new File(location+fileName);
		
		return new ModelAndView("downLoad", "downLoadFile", file);
	}
	
	@PostMapping(value="boardInsert.do")
	public String boardInsertAction(MvcBoardVO bean,
			@RequestParam(value="file",required=false)MultipartFile file) {
		
		String location="D:\\javaLessonProject\\springLesson2\\springWeb\\src\\main\\webapp\\upload\\";
	    FileOutputStream fos=null;
	    String fileName=file.getOriginalFilename();
	    if(fileName.length()>0) {
	    	try {
	    		 fos=new FileOutputStream(location.concat(fileName));
	    		 fos.write(file.getBytes());
	    		 bean.setFileName(fileName);				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}finally {
				try {
					if(fos!=null)fos.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
	    }
	    bean.setNo(dao.getSequence());
	    if(bean.getJob().equals("new")) {
	    	bean.setRef(bean.getNo());
	    	bean.setPnum(bean.getNo());
	    }else {
	    	HashMap<String, Object>map=new HashMap<String, Object>();
	    	map.put("job", bean.getJob());
	    	map.put("pnum", bean.getPnum());
	    	map.put("ref", bean.getRef());
	    	map.put("step", bean.getStep());
	    	dao.updateReply(map);
	    	dao.updateStep(map);
	    	bean.setStep((bean.getStep()+1));
	    	bean.setLev((bean.getLev()+1));
	    }
	    System.out.println(bean);
		dao.insertBoard(bean);	
		
		return "redirect:/boardMVC/boardList.do";
	}
	
	
	@RequestMapping(value="boardMVC/scrap.do")
	public String scrapAction(String id,int no,Model model) {
		System.out.println(id+" "+no);
		HashMap<String, Object>map=new HashMap<String, Object>();		
		map.put("id", id);
		map.put("scrapno", no);		
		if(!dao.idCheckData(id)){
			dao.insertScrap(map);
		}else {
			ScrapVO v=new ScrapVO();
			v.setId(id);
			v.setScrapno(dao.getScrapNumber(id).concat("#").concat(String.valueOf(no)));
			dao.updateScrap(v);			
		}
		HashSet<String>set=new HashSet<String>();
		String []res=dao.getScrapNumber(id).split("#");
		for(String s:res) {
			set.add(s);
		}		
		map.put("nos",set.toArray());
		model.addAttribute("selectMyPage", dao.selectMyPage(map));
		 
		return "boardMVC/mypage";
	}	
	@RequestMapping(value="boardMVC/myPage.do")
	public String myPageList(HttpSession session,Model model) {
		String id=(String)session.getAttribute("id");
		if(!dao.idCheckData(id)){
			return  "boardMVC/mypage";
		}
		HashSet<String>set=new HashSet<String>();
		HashMap<String, Object>map=new HashMap<String, Object>();
		String []res=dao.getScrapNumber(id).split("#");
		for(String s:res) {
			set.add(s);
		}		
		map.put("nos",set.toArray());
		model.addAttribute("selectMyPage", dao.selectMyPage(map));
		return "boardMVC/mypage";
	}
	@PostMapping (value="passWordConfirm.do")
	public String passConfirmAction(String job,String cp,int no) {
		String dbPass=dao.getPassWord(no);
		
		return dbPass!=null&& dbPass.equals(cp.trim())?job.equals("del")?"redirect:deleteBoard.do?no="+no:"redirect:/boardMVC/boardInfo.do?no="+no+"&job=modify":"redirect:/boardMVC/password.jsp?job="+job+"&no="+no;
	}
	@RequestMapping(value="deleteBoard.do")
	public String deleteBoardAction(int no) {	
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("job", "del");
		map.put("pnum", dao.getParentNumber(no));
		dao.updateReply(map);
		dao.deleteBoard(no);
		return "redirect:/boardMVC/boardList.do";
	}
	@PostMapping(value="modifyProcessAction.do")
	public String modifyAction(MvcBoardVO vo) {
		System.out.println(vo);
		dao.updateBoard(vo);		
		return "redirect:/boardMVC/boardInfo.do?no="+vo.getNo()+"&job=info";
	}
	@RequestMapping(value="springAjax/basic/replyView.do")
	public String replyViewAction() {
		//dao.replyList();
		return "reply/replyView";
	}
	
	
}










