package sist.com.di.basic2;

import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map.Entry;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class BookMain {

	
	public static void main(String[] args) {
		ApplicationContext context=new FileSystemXmlApplicationContext("src/main/java/sist/com/di/basic2/book.xml");
		Store store=(Store)context.getBean("store1");
		/*for(Book book: store.getList()) {
			System.out.println(book);
		}*/
		/*Iterator<Book>it= store.getSet().iterator();
		while(it.hasNext()) {
			System.out.println(it.next());
		}*/
	   /*Iterator<Entry<Integer, Book>>it= store.getMap().entrySet().iterator();
	   for(;it.hasNext();) {
		   Entry<Integer, Book>entry=it.next();
		   System.out.println(entry.getKey()+" "+entry.getValue());
	   }*/
		/*System.out.println(store.getProperties().getProperty("래현이책"));
		System.out.println(store.getProperties().get("래현이책"));*/

		 //System.out.println(store.getProperties());
		Enumeration<Object>e= store.getProperties().keys();
		while(e.hasMoreElements()) {
			String key=(String)e.nextElement();
			System.out.println(key+" :"+ store.getProperties().get(key));
		}
		
	}
}











