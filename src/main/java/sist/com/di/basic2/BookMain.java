package sist.com.di.basic2;

import java.util.Enumeration;
import java.util.Iterator;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class BookMain {

	public static void main(String[] args) {
		ApplicationContext context = new FileSystemXmlApplicationContext("src/main/java/sist/com/di/basic2/book.xml");
		Store store = (Store) context.getBean("store1");
		/*
		 * for(Book book: store.getList()) { System.out.println(book); }
		 */
		Iterator<Book> it = store.getSet().iterator();
		while (it.hasNext()) {
			System.out.println(it.next());
		}
		/*
		 * System.out.println(store.getProperties().getProperty("πŒ¡¶√•"));
		 * System.out.println(store.getProperties().get("πŒ¡¶√•"));
		 */

		// System.out.println(store.getProperties());

		Enumeration<Object> e = store.getProperties().keys();
		while (e.hasMoreElements()) {
			String key = (String) e.nextElement();
			System.out.println(store.getProperties().get(key));
		}
	}
}