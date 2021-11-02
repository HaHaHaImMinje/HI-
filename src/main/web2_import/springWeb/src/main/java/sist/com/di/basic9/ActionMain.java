package sist.com.di.basic9;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import sist.com.di.basic8.ConfigDemo;

public class ActionMain {

	public static void main(String[] args) {
		ApplicationContext context=new AnnotationConfigApplicationContext(ActionConfig.class);
		/*Action action=(Action)context.getBean("action");
		action.setActionCount(100);
		action.setActionName("·¡ÇöÁ¶");
		System.out.println(action.getActionCount()+" "+action.getActionName());
		System.out.println(action);*/
		Action a=new Action();
		a.setActionCount(50);
		a.getActionCount();
		System.out.println(a);
	}
}
