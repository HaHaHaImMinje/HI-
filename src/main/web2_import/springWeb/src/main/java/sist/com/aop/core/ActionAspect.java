package sist.com.aop.core;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect
@Component(value="action")
public class ActionAspect {
	@Before("execution(public * sist.com.dao.*.*(..))")
	public void fileBeforeAspect() {
		System.out.println("FileSizeCheck!Before");
	}
	@After("execution(public void sist.com.dao.*.*(..))")
	public void fileAfterAspect() {
		System.out.println("FileSizeCheck!After");
	}

}
