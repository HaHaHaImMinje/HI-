package sist.com.di.basic5;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Component;

@Component
public class WebController {// WebContailler가 ActionMessage를 의존한다.
		@Inject //선언부
	@Qualifier(value = "q2")
	private ActionMessage actionMessage;
	public WebController() {
		super();
	}
	
	/*@Autowired //생성자 2개 이상 객체 있을때 autowire 할 수가 없다.autowire만 사용가능
	public WebController(ActionMessage actionMessage) {
	super();
	this.actionMessage = actionMessage;
	}*/

	public ActionMessage getActionMessage() {
		return actionMessage;
	}

	// @Autowired //없을 경우 hi2 나온다
	@Required
	@Resource(name="action2")
	public void setActionMessage(ActionMessage actionMessage) {
		this.actionMessage = actionMessage;
	}
	
	public void viewJs() {
		System.out.println("viewJs:" + actionMessage.getMessage() + " " + actionMessage.getCount());
	}
	
	//by type, 바인딩, 와이어링 이라고한다. (long을 부르면  long이 불리는 것)
	public void add(int x) {
		
	}
	public void add(long x) {
		
	}
	public void add(String x) { //받는것을 parameter
		
	}
	
	public static void main(String[] args) {
		new WebController().add("(long)10"); //보내는 것을 argument
	}
	
}
