package sist.com.aop.basic3;

import org.springframework.stereotype.Component;

@Component(value="searchImp")
public class SearchImp  implements Search{

	@Override
	public void fileSearch() {
		// TODO Auto-generated method stub
		System.out.println("fileSearch");
		
	}
	@Override
	public void xmlParsing() {
		// TODO Auto-generated method stub		
		System.out.println("xmlParsing");
	}
	@Override
	public void domSaxSearch() {
		// TODO Auto-generated method stub
		String str=null;
		str.charAt(0);
		System.out.println("xmlParsing");
		
	}	

}
