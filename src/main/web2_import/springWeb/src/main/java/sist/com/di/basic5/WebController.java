package sist.com.di.basic5;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Component;

@Component
public class WebController {
		@Inject
		@Qualifier(value="q2")
	private ActionMessage actionMessage;
	public WebController() {
			super();
		}

	/*@Autowired		
	public WebController(@Autowired ActionMessage actionMessage) {
		super();
		this.actionMessage = actionMessage;
	}*/

	public ActionMessage getActionMessage() {
		return actionMessage;
	}
	
	@Required
	@Resource(name="action2")
	public void setActionMessage(  ActionMessage actionMessage) {
		this.actionMessage = actionMessage;
	}
	public void viewJs() {
	    System.out.println("viewJs:"+actionMessage.getMessage()+" "+actionMessage.getCount());		
	}
	
	

}




