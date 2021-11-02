package sist.com.aop.basic3;

import org.springframework.stereotype.Component;

@Component(value = "searchImp")
public class SearchImp implements Search {

	@Override
	public void fileSearch() {
		// TODO Auto-generated method stub
		System.out.println("Hi");
	}

	@Override
	public void xmlParsing() {
		// TODO Auto-generated method stub
		System.out.println("bye");

	}

	@Override
	public void domSaxSearch() {
		// TODO Auto-generated method stub
		System.out.println("Hello");

	}

}
