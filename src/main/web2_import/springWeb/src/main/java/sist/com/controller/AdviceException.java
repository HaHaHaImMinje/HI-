package sist.com.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class AdviceException {
	
	@ExceptionHandler(ArithmeticException.class)
	public String execeptionAdviceAction(ArithmeticException e,Model model) {
		model.addAttribute("msg", "ErrorCheck!");
		model.addAttribute("exeception",e);
		return "mvcOption/adviceException";
	}
	@ExceptionHandler(NumberFormatException.class)
	public String execeptionExAction(NumberFormatException e,Model model) {
		model.addAttribute("msg", "NumberFormatException!");
		model.addAttribute("exeception",e);
		return "mvcOption/erroException";
	}
	
	@ExceptionHandler(ClassCastException.class)
	public String execeptionExAction(ClassCastException e,Model model) {
		model.addAttribute("msg", "Cast!");
		model.addAttribute("exeception",e);
		return "mvcOption/erroException";
	}
	@ExceptionHandler(NullPointerException.class)
	public String execeptionExAction(NullPointerException e,Model model) {
		model.addAttribute("msg", "ErrorCheck!");
		model.addAttribute("exeception",e);
		return "mvcOption/erroException";
	}
	

}
