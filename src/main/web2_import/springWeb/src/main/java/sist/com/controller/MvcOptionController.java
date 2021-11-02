package sist.com.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import sist.com.dao.BoardDao;
import sist.com.vo.ScrapVO;
import sist.com.vo.StudentVO;

@Controller
@SessionAttributes(value= {"sList","strList"})
public class MvcOptionController {
	@Inject
	private BoardDao dao;
	@ModelAttribute(name="sList")
	private List<StudentVO>selectSt(){
		return dao.selectStudAction();
	}	
	@ModelAttribute(name="strList")
	private List<String>selectString(){
		ArrayList<String>list=new ArrayList<String>();
		list.add("민제");
		list.add("태라");		
		return list;
	}	
	@GetMapping(value="JavaClick.do")
	public String javaProc(Model model) {
		model.addAttribute("msg", "JavaAction");
		return "redirect:/mvcOption/mvcEx1Result.jsp";
	}
	@GetMapping(value="XmlClick.do")
	public String xmlProc(Model model) {
		model.addAttribute("msg", "XmlAction");
		return "redirect:/mvcOption/mvcEx1Result.jsp";
	}
	@GetMapping(value="OracleClick.do")
	public String oracleProc(Model model) {
		model.addAttribute("msg", "OracleAction");
		return "redirect:/mvcOption/mvcEx1Result.jsp";
	}
	@RequestMapping(value="modelArgDemo.do")
	public String modelProc(Model model,@ModelAttribute(name="sv")ScrapVO vo) {
		System.out.println(vo);
		model.addAttribute("msg", "OracleAction");
		return "mvcOption/mvcEx1Result";
	}
	@RequestMapping(value="headerEx1.do")
	public String injectHead(@RequestHeader("Accept")String acceptType,@RequestHeader("Host")String host,Model model) {
		model.addAttribute("acceptType", acceptType);
		model.addAttribute("host", host);
		
		return "mvcOption/mvcEx2Result";
	}
	@RequestMapping(value="headerEx2.do")
	public String injectHead2(@RequestHeader Map<String,String>map,ModelMap model) {
		
		model.addAttribute("map",map);
		return "mvcOption/mvcEx2Result";
	}
	
	
	@RequestMapping(value="nullPoint.do")
	public String exceptionEx1(int no) {
		String str=null;
		if(no>10) {
			str=new String("Default");
		}
		str.concat("Demo");
		return "mvcOption/noneException";
	}
	@RequestMapping(value="cast.do")
	public String exceptionEx2() {
		String str=(String)new Object();
		return "mvcOption/noneException";
	}
	@GetMapping(value="numberFormat.do")
	public String numberFormatAction() {
		String str="이십";
		 Integer.parseInt(str);
		return "mvcOption/noneException";
	}
	@GetMapping(value="arithmeticException")
	public String arithmeticExceptionAction() {
		int rs=10/0;
		return "mvcOption/noneException";
	}
	
	@RequestMapping(value="interLogin.do")
	public String loginActionDataPro(String id,String pw) {
		System.out.println("loginActionDataPro");		
		
		return "redirect:/intercepterList.do";
		
	}	
	@RequestMapping(value="intercepterList.do")
	public String intercepterList(Model model) {
		model.addAttribute("msg","ListMessage");
		
		return "/mvcOption/interListView";
		
	}
	
	
	

}



















