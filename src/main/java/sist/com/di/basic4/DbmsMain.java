package sist.com.di.basic4;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class DbmsMain {

	public static void main(String[] args) {
		ApplicationContext context = new FileSystemXmlApplicationContext("src/main/java/sist/com/di/basic4/dbaction.xml"); // context는 돔이다. 레퍼런스?
		//System.out.println(context.getBean("sqlSessionFactoryBean")); // getBean(의존성 받아오는것 )뒤는 실제 메모리 주소 context룰 만드는 순간 싱글톤이 만들어 지고 다음에 dao(prototype일 경우)를 부를 대  싱글톤인 context 는 만들어지지않는다. 
		DiController diController = (DiController)context.getBean("diController");
		diController.selectDemo();
	}
}
