package sist.com.di.basic2;

import java.util.*;

public class Store {
	private List<Book> list;
	private Set<Book> set;
	private Map<Integer, Book> map;
	private Properties properties;
	
	
	public List<Book> getList() {
		return list;
	}
	public void setList(List<Book> list) {
		this.list = list;
	}
	public Set<Book> getSet() {
		return set;
	}
	public void setSet(Set<Book> set) {
		this.set = set;
	}
	public Map<Integer, Book> getMap() {
		return map;
	}
	public void setMap(Map<Integer, Book> map) {
		this.map = map;
	}
	public Properties getProperties() {
		return properties;
	}
	public void setProperties(Properties properties) {
		this.properties = properties;
	}
	
	@Override
	public String toString() {
		return "Store [list=" + list + ", set=" + set + ", map=" + map + ", properties=" + properties + "]";
	}
	
}
