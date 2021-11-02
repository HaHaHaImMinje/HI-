package sist.com.controller;

import java.util.HashMap;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import sist.com.dao.BoardDao;
import sist.com.vo.ReplyVO;

@Controller
public class SpringAjaxController {
	private BoardDao dao;

	@RequestMapping(value = "studAjax.do")
	public String selectStudentAction(Model model) {
		/* List<E> list=dao.selectStudAction(); */
		JSONArray jsonArray = new JSONArray();
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("studno", "1000");
		jsonObject.put("name", "Ajax");
		jsonObject.put("height", 88);
		jsonArray.add(jsonObject);

		model.addAttribute("jsonList", jsonArray);
		model.addAttribute("Message", "AjaxJsonAction");
		return "/JQuery/SpringAjax/AppEx1Result";
	}

	@ResponseBody
	@RequestMapping(value = "mapAjax.do")
	public HashMap<String, String> ajaxActtion() {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("id", "blue");
		map.put("pass", "1234");
		return map;
	}

	@ResponseBody
	@PostMapping(value = "ObjectAjax.do")
	public ReplyVO ajaxObject() {
		ReplyVO rv = new ReplyVO();
		rv.setNo(10);
		rv.setJob("Student");
		return rv;
	}
}
