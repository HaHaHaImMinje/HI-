package sist.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import sist.com.vo.UserBean;
import sist.com.vo.UserValidate;

@Controller
public class UserValidateController {
	@Autowired
	private UserValidate uservalidate;
	
	@InitBinder
	private void initBinder(WebDataBinder binder) {
		binder.addValidators(uservalidate);
		System.out.println("µ¹¾Æ¶ó");
	}
	
	@RequestMapping(value="start.do")
	public String userForm(Model model) {
		model.addAttribute("user",new UserBean());
		return "validateEx/userForm";
	}
	@PostMapping(value="saveUser.do")
	public String saveProcess(@ModelAttribute("user")@Validated UserBean user, BindingResult result) {
		
		if(result.hasErrors()) {
			return "validateEx/userForm";
		}
		return "validateEx/userSuccess";
		
	}
}
