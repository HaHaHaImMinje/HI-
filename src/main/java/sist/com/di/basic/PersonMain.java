package sist.com.di.basic;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class PersonMain {
	public static void main(String[] args) {		
	ApplicationContext context=new FileSystemXmlApplicationContext("src/main/java/sist/com/di/basic/persondi.xml");
	//System.out.println(context.getBean("person1")); 
	//FileSystemXmlApplicationContext�� xml�� �������� �˾Ƽ� �����ؼ� �̾Ƽ� ����� �� �ִ�.
	//������Ÿ���� ����ϸ� getbean �� �� ���� ���ο� ��ü�� ���� �� �ִ�.
	
/*	Object o1=context.getBean("person1");
	Object o2=context.getBean("person1");
	System.out.println("o1=="+o1);
	System.out.println("o2=="+o2);
	System.out.println(o1==o2); */
	
	/*Person p1 = ((Person)context.getBean("person1")); //person���� ����ȯ
	p1.setName("������");

	System.out.println(p1.getName()); */
	System.out.println(((Person)context.getBean("person3")));
	}
}
