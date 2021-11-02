package sist.com.controller;

import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;

import sist.com.vo.MemberCheckBean;
import sist.com.vo.MemberInfoValidate;

@Controller
@RequestMapping(value="/")
public class MvcOptionCoreController {	
	@RequestMapping(value="cookieTest.do")
	public String cookieDemo1
	(@RequestParam(value="color",required=false,defaultValue="white")String color,HttpServletResponse response,Model model)
	{		
		Cookie cookie=null;
		cookie=new Cookie("color",color);
		cookie.setMaxAge(30);
		response.addCookie(cookie);
		model.addAttribute("color", color);
		
		
		return "cookieSession/cook1Result";
	}
	@RequestMapping(value="cookCheck.do")
	public String cookieCheck(@CookieValue(value="color",required=false,defaultValue="white")String cookie,Model model) {
		model.addAttribute("color",cookie);
		return "cookieSession/cookieColor";
	}
	@RequestMapping(value="loginCookieCheck.do")
	public String cookieAdminCheck(@CookieValue(value="id",required=false,defaultValue="et")String cookie,Model model) {
		model.addAttribute("id", cookie);
		System.out.println(cookie+"----------------");
		return "/cookieSession/jspApp1/jsp/adminLogin";
	}
	@RequestMapping(value="cookieLogin.do")
	public String cookieCreateProcess
	         (@RequestParam(value="id")String id,
	        		  String ck,HttpServletResponse response) {
		Cookie cookie=null;
		cookie=new Cookie("id", id);	
		cookie.setMaxAge(ck!=null?200:0);
	    response.addCookie(cookie);
	    
		
		return "cookieSession/cookieLoginSuccess";
		
	}
	@GetMapping(value="redirectProcess.do")
	public String redirectAppProcess(RedirectAttributes ar, 
			String job,String page) {
		 ar.addFlashAttribute("job", job);
		 ar.addFlashAttribute("page", page);		 
		return "redirect:redirectView.do";
	}
	@GetMapping(value="redirectView.do")
	public String redirectViewProcess(HttpServletRequest request) {
		Map<String,?>map=RequestContextUtils.getInputFlashMap(request);
		System.out.println(map.get("job"));
		System.out.println(map.get("page"));		
		
		return "redirect:/mvcOption/redirectView.jsp";
	}
	@RequestMapping(value="formValidate.do",method=RequestMethod.POST)
	public String validateCheck(@ModelAttribute("test") MemberCheckBean bean,BindingResult result) {
		new MemberInfoValidate().validate(bean, result);
		if(result.hasErrors()) {
			return "validateEx/formPro";
		}
		return "validateEx/formResult";
	}

}

















