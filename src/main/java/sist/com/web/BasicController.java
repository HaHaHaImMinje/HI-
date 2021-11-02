package sist.com.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BasicController {
	
	@Resource(name = "loginAction")
	LoginAction action;

	@RequestMapping(value = "loginAction.do")
	public ModelAndView loginProcess(String id, String password) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("id", id);
		if (action.loginCheckAction(id, password)) {
			modelAndView.setViewName("boardMVC/loginSuccess");
		} else {
			modelAndView.setViewName("redirect:/boardMVC/signin.jsp");
		}
		return modelAndView;
	}

	@RequestMapping(value = "buttonList.do")
	public ModelAndView basicListPark() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("Message", "HelloSpringMVC1");
		modelAndView.setViewName("parkList");

		return modelAndView;
	}

	@RequestMapping(value = "buttonSet.do")
	public ModelAndView basicSetPark() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("Message", "HelloSpringMVC2");
		modelAndView.setViewName("parkSet");

		return modelAndView;
	}

	@RequestMapping(value = "buttonMap.do")
	public ModelAndView basicMapPark() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("Message", "HelloSpringMVC3");
		modelAndView.setViewName("actionView");

		return modelAndView;
	}

}