package sist.com.di.basic5;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Component;

@Component
public class WebController {// WebContailler�� ActionMessage�� �����Ѵ�.
		@Inject //�����
	@Qualifier(value = "q2")
	private ActionMessage actionMessage;
	public WebController() {
		super();
	}
	
	/*@Autowired //������ 2�� �̻� ��ü ������ autowire �� ���� ����.autowire�� ��밡��
	public WebController(ActionMessage actionMessage) {
	super();
	this.actionMessage = actionMessage;
	}*/

	public ActionMessage getActionMessage() {
		return actionMessage;
	}

	// @Autowired //���� ��� hi2 ���´�
	@Required
	@Resource(name="action2")
	public void setActionMessage(ActionMessage actionMessage) {
		this.actionMessage = actionMessage;
	}
	
	public void viewJs() {
		System.out.println("viewJs:" + actionMessage.getMessage() + " " + actionMessage.getCount());
	}
	
	//by type, ���ε�, ���̾ �̶���Ѵ�. (long�� �θ���  long�� �Ҹ��� ��)
	public void add(int x) {
		
	}
	public void add(long x) {
		
	}
	public void add(String x) { //�޴°��� parameter
		
	}
	
	public static void main(String[] args) {
		new WebController().add("(long)10"); //������ ���� argument
	}
	
}
