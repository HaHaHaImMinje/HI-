package sist.com.di.basic6;

import org.springframework.stereotype.Component;

@Component
public class MessageColor {

	public String getColorMessage(String id) {
		String message=null;
		if(id.equals("blue")) {
			message="blue�� �ÿ��ϴ�";
		}
		else if(id.equals("red")) {
			message="red�� �������̴�";
		}
		else if(id.equals("green")) {
			message="green�� �������̴�";
		}
		else if(id.equals("cyan")) {
			message="cyan�� �߿����δ�";
		}
		return message;
	}
}
