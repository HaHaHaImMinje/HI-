package sist.com.controller;

import java.util.HashMap;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import sist.com.dao.ParentDao;
import sist.com.dao.TransActionDao;

@Controller
public class AopMvcController {

	@Autowired
	private ParentDao dao;

	@Inject
	private TransActionDao actionDao;

	@RequestMapping(value = "transActionPro.do")
	public String insertUpdateACtion(int no, String msg) {
		System.out.println("transactionPro check"); 
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("no", no);
		map.put("msg", msg);
		actionDao.insertTransaction(map);
		map.put("msg", "Modify");
		actionDao.updateTransaction(map);
		return "/mvcAOP/inputList";
	}

	@GetMapping(value = "/mvcAOP/aopActionDemo1.do")
	public String actionaopEx1() {
		dao.dmlProcessData();
		System.out.println("HEHE");
		return "redirect:/mvcAOP/mvcEx1Result.jsp";
	}

	@GetMapping(value = "aopActionDemo2.do")
	public String actionaopEx2() {
		// dao.fileAccessData();
		System.out.println("HEHE2");
		return "redirect:/mvcAOP/mvcEx2Result.jsp";

	}

}
