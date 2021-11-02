package sist.com.aop.basic3;

import java.util.Date;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect
@Component(value="actionAspect")
public class AspectAction {
	
	@Before("execution(public * sist.com.aop.basic3.Search*.*())")
	public void dataBeforeProcess(JoinPoint jp) {
		Signature signature=jp.getSignature();
		Date date=new Date();
		System.out.println("Before "+date);		
		String methodName=signature.getName();		
		if(methodName.equals("domSaxSearch")) {
			System.out.println("DomActionBefore");
		}
		else if(methodName.equals("fileSearch")) {
			System.out.println("FileActionBefore");
		}
		else if(methodName.equals("xmlParsing")) {
			System.out.println("XmlActionBefore");
		}		
		
	}
	@After("execution(public * sist.com.aop.basic3.Search*.*())")
	public void afterProcess() {
		System.out.println("afterProcess");
	}
	@AfterReturning("execution(public * sist.com.aop.basic3.Search*.*())")
	public void AfterReturningProcess() {
		System.out.println("AfterReturningProcess");
	}
	@AfterThrowing("execution(public * sist.com.aop.basic3.Search*.*())")
	public void AfterThrowing() {
		System.out.println("AfterThrowing");		
	}
	
	/*@Around("execution(public * sist.com.aop.basic3.Search*.*())")
	public void aroundProcess(ProceedingJoinPoint pp) {
		System.out.println("AroundBeforeProcess");
		try {
			pp.proceed();
		} catch (Throwable e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		System.out.println("AroundAfterProcess");
		
	}*/

}










