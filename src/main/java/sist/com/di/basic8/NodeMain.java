package sist.com.di.basic8;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class NodeMain {

	public static void main(String[] args) {
		ApplicationContext context=new AnnotationConfigApplicationContext(ConfigDemo.class);
		//System.out.println(context.getBean("getSystemNode")); //Bean��� �� ��ҹ��� ���� �ؾ���
//		System.out.println(context.getBean(""));
		System.out.println(context.getBean("minje")); //Component�� �ҹ��� ���
		System.out.println(context.getBean("getMan"));
		System.out.println(context.getBean("book2"));
		System.out.println(context.getBean("person1"));
		
		/*String[] beans = context.getBeanDefinitionNames();
		for(int i = 0 ; i < beans.length; i++)
			System.out.println(beans[i]);*/
	}
}

