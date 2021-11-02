package sist.com.di.basic2;

public class Book {
	private String bookName;
	   private int price;
	   private String author;
	   private String publihser;
	   
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublihser() {
		return publihser;
	}
	public void setPublihser(String publihser) {
		this.publihser = publihser;
	}
	@Override
	public String toString() {
		return "Book [bookName=" + bookName + ", price=" + price + ", author=" + author + ", publihser=" + publihser
				+ "]";
	}
	
	
	
}