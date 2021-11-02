package sist.com.aop.basic;

import org.aspectj.lang.ProceedingJoinPoint;

public class AroundAdviceEx {
	public void messageAround(ProceedingJoinPoint jp) throws Throwable {
		jp.proceed(); // �ٽ��ڵ� �����ȴ�
		long start = System.currentTimeMillis();
		for (int i = 0; i < (int) (Math.random() * 10000); i++) {
		}
		long end = System.currentTimeMillis();
		System.out.println((end - start) + "�и��� �ҿ�...");
	}

}
