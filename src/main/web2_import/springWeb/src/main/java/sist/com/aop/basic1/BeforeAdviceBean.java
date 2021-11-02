package sist.com.aop.basic1;

import org.springframework.aop.BeforeAdvice;

public class BeforeAdviceBean implements BeforeAdvice{
	public void beforeMethod() {
		System.out.println("DataBaseConnectAction");
		System.out.println("PrePareAction");	
	}

}
