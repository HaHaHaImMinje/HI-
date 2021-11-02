package sist.com.controller;

import javax.servlet.http.Cookie;
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

import sist.com.vo.MemberCheckBean;
import sist.com.vo.MemberinfoValidate;

@Controller
@RequestMapping(value = "/")
public class MvcOptionCoreController {
	@RequestMapping(value = "cookieTest.do")
	public String cookieDemo1(@RequestParam(value = "color", required = false, defaultValue = "white") String color,
			HttpServletResponse response, Model model) {
		Cookie cookie = null;
		cookie = new Cookie("color", color);
		cookie.setMaxAge(10);
		response.addCookie(cookie);
		model.addAttribute("color", color);

		return "cookiesSession/cook1Result";
	}

	@RequestMapping(value = "cookCheck.do")
	public String cookieCheck(@CookieValue(value = "color", required = false, defaultValue = "white") String cookie,
			Model model) {
		model.addAttribute("color", cookie);
		return "cookieSession/cookieColor";

	}

	@RequestMapping(value = "loginCookieCheck.do")
	public String cookieAdminCheck(@CookieValue(value = "id", required = false, defaultValue = "et") String cookie,
			Model model) {
		model.addAttribute("id", cookie);
		return "/cookieSession/jspApp1/jsp/adminLogin";
	}

	@RequestMapping(value = "cookieLogin.do")
	public String cookieCreateProcess(@RequestParam(value = "id") String id, String ck, HttpServletResponse response) {
		System.out.println("id=" + id + "ck=" + ck);
		Cookie cookie = null;
		cookie = new Cookie("id", id);
		cookie.setMaxAge(ck!=null?30:0);
		response.addCookie(cookie);
		
		return "cookieSession.cookieLoginSuccess";

	}
	@GetMapping()
	
	
	@RequestMapping(value="formValidate.do", method=RequestMethod.POST)
	public String fromValidate(@ModelAttribute("test") MemberCheckBean bean, BindingResult result) {
		System.out.println("oh");
		new MemberinfoValidate().validate(bean, result);
		if(result.hasErrors()) { 				//에러가 있으면 입력폼으로 돌아간다.
			return"validateEx/formPro";
		}
		return "validateEx/formResult";
	}
	
}
