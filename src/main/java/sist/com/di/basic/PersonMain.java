package sist.com.di.basic;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class PersonMain {
	public static void main(String[] args) {		
	ApplicationContext context=new FileSystemXmlApplicationContext("src/main/java/sist/com/di/basic/persondi.xml");
	//System.out.println(context.getBean("person1")); 
	//FileSystemXmlApplicationContext가 xml의 정보들을 알아서 가공해서 뽑아서 사용할 수 있다.
	//프로토타입을 사용하면 getbean 할 때 마다 새로운 객체가 나올 수 있다.
	
/*	Object o1=context.getBean("person1");
	Object o2=context.getBean("person1");
	System.out.println("o1=="+o1);
	System.out.println("o2=="+o2);
	System.out.println(o1==o2); */
	
	/*Person p1 = ((Person)context.getBean("person1")); //person으로 형변환
	p1.setName("도경진");

	System.out.println(p1.getName()); */
	System.out.println(((Person)context.getBean("person3")));
	}
}
