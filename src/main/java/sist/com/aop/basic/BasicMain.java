package sist.com.aop.basic;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class BasicMain {

	public static void main(String[] args) {
		ApplicationContext context = new FileSystemXmlApplicationContext("src/main/java/sist/com/aop/basic/basic.xml");
		Dao dao = (Dao) context.getBean("mybatisDao");	
		dao.appDelete(); //핵심 먼저 실행되고 나머지 것들 실행
		

	}

}
