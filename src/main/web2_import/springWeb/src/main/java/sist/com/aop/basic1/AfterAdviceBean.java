package sist.com.aop.basic1;

import org.springframework.aop.AfterAdvice;

public class AfterAdviceBean implements AfterAdvice{
	public void afterMethod() {
		System.out.println("Connecction Close");
		System.out.println("DataBaseAfterEnd");
	}

}
