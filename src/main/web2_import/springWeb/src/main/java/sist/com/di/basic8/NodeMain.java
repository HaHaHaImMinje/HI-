package sist.com.di.basic8;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class NodeMain {
	
	public static void main(String[] args) {
		ApplicationContext context=new AnnotationConfigApplicationContext(ConfigDemo.class);
		System.out.println(context.getBean("getSystemNode"));
		//System.out.println(context.getBean("person1"));
		
	}

}
