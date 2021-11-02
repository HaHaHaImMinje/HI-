package sist.com.vo;

import java.util.List;

import lombok.Data;

@Data
public class UserBean {
	private String name;
	private String email;
	private String gender;
	private List<String>item;
	

}
