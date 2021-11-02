package sist.com.di.basic8;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;


public class ConFigMan {	
	@Bean
	public Man getMan() {
		return new Man("Çü±ÇÀÌ", 25);
	}

}
