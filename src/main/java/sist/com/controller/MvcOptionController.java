package sist.com.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import sist.com.dao.BoardDao;
import sist.com.vo.MemberCheckBean;
import sist.com.vo.MemberinfoValidate;
import sist.com.vo.ScrapVO;
import sist.com.vo.StudentVO;

@Controller
@SessionAttributes(value = { "sList", "strList" })
public class MvcOptionController {

	@Inject
	private BoardDao dao;

	@ModelAttribute(name = "sList")
	private List<StudentVO> selectSt() {
		return dao.selectStudAction();
	}

	@ModelAttribute(name = "strList")
	private List<String> selectString() {
		ArrayList<String> list = new ArrayList<String>();
		list.add("민제");
		list.add("태라");
		return list;
	}

	@GetMapping(value = "Java.do")
	public String javaProc(Model model) {
		model.addAttribute("msg", "JavaAction");
		return "redirect:/mvcOption/mvcEx1Result.jsp";
	}

	@GetMapping(value = "Xml.do")
	public String xmlProc(Model model) {
		model.addAttribute("msg", "XmlAction");
		return "redirect:/mvcOption/mvcEx1Result.jsp";
	}

	@GetMapping(value = "Oracle.do")
	public String oracleProc(Model model) {
		model.addAttribute("msg", "OracleAction");
		return "redirect:/mvcOption/mvcEx1Result.jsp";
	}

	@RequestMapping(value = "modelArgDemo.do")
	public String modelProc(Model model, @ModelAttribute(name = "sv") ScrapVO vo) {
		System.out.println(vo);
		model.addAttribute("msg", "OracleAction");
		return "mvcOption/mvcEx1Result";
	}

	@RequestMapping(value = "headerEx1.do")
	public String injectHead(@RequestHeader("Accept") String acceptType, @RequestHeader("Host") String hostType,
			Model model) {

		model.addAttribute("acceptType", acceptType);
		model.addAttribute("hostType", hostType);

		return "mvcOption/mvcEx2Result";
	}

	@RequestMapping(value = "headerEx2.do")
	public String injectHead2(@RequestHeader Map<String, String> map, ModelMap model) {
		model.addAttribute("map", map);

		return "mvcOption/mvcEx2Result";
	}

	@RequestMapping(value = "nullPoint.do")
	public String exceptionEx1(int no) {
		String str = null;
		if (no > 10) {
			str = new String("Default");
		}
		str.concat("Demo");
		return "mvcOption/nonException";

	}

	@RequestMapping(value = "cast.do")
	public String exceptionEx2() {
		String str = (String) new Object();
		return "mvcOption/nonException";
	}

	@GetMapping(value="numberFormat.do")
	public String numberFormatAction() {
		String str="이십";
		Integer.parseInt(str);
		return"mvcOption/noneException";
	}
	
	 @ExceptionHandler(NumberFormatException.class)
	   public String execeptionExAction(NumberFormatException e,Model model) {
	      model.addAttribute("msg", "NumberFormatException!");
	      model.addAttribute("exeception",e);
	      return "mvcOption/erroException";
	   }
	
	@ExceptionHandler(NullPointerException.class)
	public String execeptionExAction(NullPointerException e, Model model) {
		model.addAttribute("exception", "ErrorCheck!");
		model.addAttribute("exeception", e);
		return "mvcOption/erroException";
	}

	@RequestMapping(value="interLogin.do")
	public String loginActionDataPro(String id, String pw) {
		System.out.println("loginActionDataPro");
		return "redirect:/intercepterList.do";
	}
	
	@RequestMapping(value="intercepterList.do")
	public String intercepterList(Model model) {
		model.addAttribute("msg", "ListMessage");
		return "/mvcOptioninterListView/";
		
	}
	


}