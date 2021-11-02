package sist.com.di.basic9;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class ActionMain {

	public static void main(String[] args) {
		ApplicationContext context = new AnnotationConfigApplicationContext(ActionConfig.class);
		Action action = (Action)context.getBean("action");
		action.setActionCount(100);
		action.setActionName("∞Ê¡¯¡∂");
		
		System.out.println(action.getActionMode()+ " "+action.getActionName());
		System.out.println(action);
		
		Action a = new Action();
		a.setActionCount(50);
		a.getActionCount();
		
	}
}
