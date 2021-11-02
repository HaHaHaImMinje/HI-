package sist.com.aop.basic1;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class BasicMain {
	
	public static void main(String[] args) {
		ApplicationContext context=new FileSystemXmlApplicationContext("src/main/java/sist/com/aop/basic/basic.xml");
		Dao dao=(Dao) context.getBean("mybatisDao");
		
		dao.appDelete();
		
	}

}
