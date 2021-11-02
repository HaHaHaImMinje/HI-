package sist.com.di.basic6;

import org.springframework.stereotype.Component;

@Component
public class MessageColor {

	public String getColorMessage(String id) {
		String message=null;
		if(id.equals("blue")) {
			message="blue는 시원하다";
		}
		else if(id.equals("red")) {
			message="red는 정렬적이다";
		}
		else if(id.equals("green")) {
			message="green은 안정적이다";
		}
		else if(id.equals("cyan")) {
			message="cyan는 추워보인다";
		}
		return message;
	}
}
