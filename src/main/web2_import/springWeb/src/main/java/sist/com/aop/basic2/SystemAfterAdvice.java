package sist.com.aop.basic2;

import java.lang.reflect.Method;

import org.springframework.aop.AfterAdvice;
import org.springframework.aop.AfterReturningAdvice;
import org.springframework.aop.ThrowsAdvice;

public class SystemAfterAdvice implements AfterReturningAdvice{
	
	public void afterReturning(Object returnValue, Method method, Object[] args, Object target) throws Throwable {
		// TODO Auto-generated method stub
		System.out.println("FileClose...AfterReturningAdvice");
	}
	
	
	/*public void after() throws Throwable {
		// TODO Auto-generated method stub
		System.out.println("FileClose...AfterReturningAdvice");
	}*/
	
	
	
	

}
