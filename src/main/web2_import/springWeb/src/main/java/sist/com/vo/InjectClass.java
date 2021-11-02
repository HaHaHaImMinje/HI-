package sist.com.vo;

import javax.inject.Inject;

import org.springframework.stereotype.Component;

import sist.com.dao.BoardDao;

@Component
public class InjectClass {
	@Inject
	private BoardDao dao;
	public void sayAction() {
		System.out.println("sayAction");
		
	}

}
