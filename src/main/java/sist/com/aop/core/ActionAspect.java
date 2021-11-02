package sist.com.aop.core;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect
@Component(value="action") //@Component 안되면 servlet을 확인 할 것

public class ActionAspect {
	@Before("execution(public * sist.com.dao.*.*(..))")
	public void fileBeforeAspect() {
		System.out.println("FileSizeCheck!Before");
		
	}
	
	@After("execution(public * sist.com.dao.*.*(..))")
	public void fileAfterAspect() {
		System.out.println("FileSizeCheck!Before");
		
	}

}
