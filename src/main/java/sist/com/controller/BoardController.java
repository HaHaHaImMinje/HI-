package sist.com.controller;

import java.io.FileOutputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import sist.com.dao.BoardDao;
import sist.com.vo.MvcBoardVO;
import sist.com.vo.ScrapVO;

@Controller
public class BoardController {

	@Autowired
	private BoardDao dao;
	/*
	 * http://localhost:8080/springWeb/boardMVC/boardLogin.do?id=Admin&password=1234
	 */
	// @RequestMapping(value = "/boardMVC/boardLogin.do", method={RequestMethod.GET,
	// RequestMethod.POST})
	// @GetMapping(value = "/boardMVC/boardLogin.do")

	@PostMapping(value = "/boardMVC/boardLogin.do") // login service.
	public String logCheck(HttpSession session, HttpServletRequest request) {
		System.out.println("입력한 ID, Password : " + request.getParameter("id") + ", " + request.getParameter("password"));
		boolean state = dao.loginBoard(request.getParameter("id"), request.getParameter("password"));
		// 입력한 ID와 Password가 디비에 매칭되는 정보가 있을시에 로그인 성공과 동시에 Session 등록.
		if (state) {
			// Session 등록 코드.
			session.setAttribute("id", request.getParameter("id"));
			// Session 등록 시간.
			session.setMaxInactiveInterval(30);
		}
		// login success : redirect:boardList.do //show board.
		// login fail : redirect:signin.jsp //back to the login page.
		return state ? "redirect:boardList.do" : "redirect:signin.jsp";
	}

	// show board
	@RequestMapping(value = "/boardMVC/boardList.do")
	public String boardListAction(Model model) {
		/* model.addAttribute("boardList","dao.selectList()"); */
		model.addAttribute("boardList", dao.selectBoard());
		return "boardMVC/board";
	}

	// @GetMapping(value = "boardMVC/boardInfo.do")
	@RequestMapping(value = "boardMVC/boardInfo.do")
	public String boardInfoAction(int no, Model model, String job) {
		// dao.boardInfo(no);
		model.addAttribute("info", dao.selectInfoBoard(no));
		if (job.equals("info")) {
			// dao.updateHit(no);
			dao.updateHit(no);
			return "boardMVC/info";
		} else {
			return "boardMVC/modify";
		}
	}
	
	@RequestMapping(value="downLoadAction.do")
	public String downLoadProcess(String fileName) {
		
		return "";
		
	}

	@PostMapping(value = "boardInsert.do")
	public String boardInsertAction(MvcBoardVO bean,
			@RequestParam(value = "file", required = false) MultipartFile file) {
		String location = "D:\\eclipseFile\\Spring\\web\\src\\main\\webapp\\upload\\";
	
		FileOutputStream fos = null;
		System.out.println("여기까지 돌아간다.");
		System.out.println("bean : " + bean);
		System.out.println("file : " + file);
		String fileName = file.getOriginalFilename();
		if (fileName.length() > 0) {
			try {
				fos = new FileOutputStream(location.concat(fileName));
				fos.write(file.getBytes());
				bean.setFileName(fileName);
			} catch (Exception e) {
				// TODO: handle exceptionx
				e.printStackTrace();
			} finally {
				try {
					if (fos != null)
						fos.close();
				} catch (Exception e2) {
					// TODO: handle exception
				}
			}
		}
		bean.setNo(dao.getSequence());
		if (bean.getJob().equals("new")) {
			bean.setRef(bean.getNo());
			bean.setPnum(bean.getNo());
		} else {
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("job", bean.getJob());
			map.put("pnum", bean.getPnum());
			map.put("ref", bean.getRef());
			map.put("step", bean.getStep());
			dao.updateReply(map);
			dao.updateStep(map);
			bean.setStep(bean.getStep() + 1);
			bean.setLev(bean.getLev() + 1);
		}
		System.out.println(bean);
		dao.insertBoard(bean);

		return "redirect:/boardMVC/boardList.do";
	}

	@RequestMapping(value = "boardMVC/scrap.do")
	public String scrapAction(String id, int no, String scrapno) {
		System.out.println(id + " " + no);
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("scrapno", no);
		if (!dao.idCheckData(id)) {
			dao.insertScrap(map);
		} else {
			ScrapVO v = new ScrapVO(no, scrapno, scrapno);
			v.setId(id);
			v.setScrapno(dao.getScrapNumber(id).concat("#").concat(String.valueOf(no)));
			dao.updateScrap(v);
		}
		HashSet<String> set = new HashSet<String>();
		String[] res = dao.getScrapNumber(id).split("#");
		for (String s : res) {
			set.add(s);
		}
		for (Object o : set.toArray()) {
			System.out.println("data" + o);
		}
		map.put("nos", set.toArray());
		// model.addAttribute("selectMypage",dao.selectMyPage(map));

		return "boardMVC/mypage";
	}

	@PostMapping(value = "passWordConfirm.do")
	public String passConfirmAction(String job, String cp, int no) {
		String dbPass = dao.getPassWord(no);
		return dbPass != null && dbPass.equals(cp.trim())
				? job.equals("del") ? "redirect:deleteBoard.do?no=" + no
						: "redirect:/boardMVC/boardInfo.do?no=" + no + "&job=modify"
				: "redirect:/boardMVC/password.jsp?job=" + job + "&no=" + no;
	}

	@RequestMapping(value = "deleteBoard.do")
	public String deleteBoardAction(int no) {
		dao.deleteBoard(no);
		return "redirect:/boardMVC/boardList.do";
	}

	@PostMapping(value = "modifyProcessAction.do")
	public String modifyAction(MvcBoardVO vo) {
		System.out.println(vo);
		// dao.updateBoard(vo);
		return "redirect:/boardMVC/boardInfo.do?no=" + vo.getNo() + "&job=info";
	}

	@RequestMapping(value = "springAjax/basic/replyView.do")
	public String replyViewAction() {
		// dao.replyList(); 
		return "reply/replyView";
	}

}
