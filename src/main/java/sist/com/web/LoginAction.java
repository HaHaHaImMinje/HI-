package sist.com.web;

import org.springframework.stereotype.Component;

@Component
public class LoginAction {
	
	public boolean loginCheckAction(String id, String password) {
		return id.equals("Admin") && password.equals("1234");
	}

}
