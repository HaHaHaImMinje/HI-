package sist.com.di.basic6;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class BasicControllerDao {
	
	public List<String>selectLoginItem(){
		ArrayList<String>list=new ArrayList<String>();
		list.add("java");
		list.add("oracle");
		list.add("jsp");
		list.add("spring");
		return list;
	}
}
