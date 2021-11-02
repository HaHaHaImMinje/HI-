package sist.com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import sist.com.vo.InjectClass;

@Controller
@RequestMapping(value="mvcOption/")
public class OptionActionController {
	@Autowired	
	private InjectClass inject;	
	@RequestMapping(value="clickAction.do")
/*	@Required*/
	public String clickView(Model model) {
		//inject.sayAction();
		model.addAttribute("msg", "clickView");
		return "/mvcOption/mvcEx3Result";
	}
	@RequestMapping(value="mouseAction.do")
	public String mouseView(Model model) {	
		model.addAttribute("msg", "mouseView");
		return "/mvcOption/mvcEx3Result";
	}
}



