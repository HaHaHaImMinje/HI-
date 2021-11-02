package sist.com.di.basic4;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class DbmsMain {
	
	public static void main(String[] args) {
		ApplicationContext context=new FileSystemXmlApplicationContext("src/main/java/sist/com/di/basic4/dbaction.xml");
		//System.out.println(context.getBean("sqlSessionFactoryBean"));
		DiController diController=(DiController)context.getBean("diController");
		diController.selectDemo();
	}

}
