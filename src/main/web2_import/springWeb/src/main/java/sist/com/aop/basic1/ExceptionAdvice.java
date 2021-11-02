package sist.com.aop.basic1;

import org.springframework.aop.ThrowsAdvice;

public class ExceptionAdvice implements ThrowsAdvice{
	public void exceptionMessage() {
		System.out.println("exceptionMessage");
	}

}
