package sist.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OptionActionController {

	@RequestMapping(value = "clickAction.do")
	public String clickView(Model model) {
		model.addAttribute("msg", "clickView");
		return "/mvcOption/mvcEx3Result";
	}

}
