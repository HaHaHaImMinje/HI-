package sist.com.aop.basic1;

import org.aspectj.lang.ProceedingJoinPoint;

public class AroundAdviceEx {
	public void messageAround(ProceedingJoinPoint jp) throws Throwable {
		//jp.proceed();
		long start=System.currentTimeMillis();
		for(int i=0;i<(int)(Math.random()*10000000);i++){			
		}
		long end=System.currentTimeMillis();
		System.out.println((end-start)+"밀리초 소요...");
		
	}

}
