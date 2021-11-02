package sist.com.di.basic8;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class Computer {
	@Value("oracle")
	private String cpu;
	private String maker;
	private String graphicCard;
	private int price;

	public Computer() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Computer(String cpu, String maker, String graphicCard, int price) {
		super();
		this.cpu = cpu;
		this.maker = maker;
		this.graphicCard = graphicCard;
		this.price = price;
	}

	public String getCpu() {
		return cpu;
	}

	public void setCpu(String cpu) {
		this.cpu = cpu;
	}

	public String getMaker() {
		return maker;
	}

	public void setMaker(String maker) {
		this.maker = maker;
	}

	public String getGraphicCard() {
		return graphicCard;
	}

	public void setGraphicCard(String graphicCard) {
		this.graphicCard = graphicCard;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "minje Computer  [cpu=" + cpu + ", maker=" + maker + ", graphicCard=" + graphicCard + ", price=" + price + "]";
	}
}
