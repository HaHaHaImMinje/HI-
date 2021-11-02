package sist.com.di.basic8;

import org.springframework.context.annotation.Bean;


public class ConFigMan {
	
	@Bean
	public Man getMan() {
		return new Man("πŒ¡¶", 28);
	}
}
