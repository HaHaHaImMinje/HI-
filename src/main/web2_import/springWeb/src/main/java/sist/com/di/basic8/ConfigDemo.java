package sist.com.di.basic8;

import javax.inject.Inject;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.context.annotation.ImportResource;

@Configuration
@Import(value=ConFigMan.class)
@ComponentScan(basePackages="sist.com.di.basic8")
@ImportResource(value= {"/sist/com/di/basic1/persondi.xml","/sist/com/di/basic2/book.xml"})
public class ConfigDemo {
	
	@Inject
	private DiProcess diProcess;
	
	@Bean
	public SystemNode getSystemNode() {
		diProcess.process();
		return new SystemNode(getComputer(),getKeyBoard() );
	}
	@Bean
	public KeyBoard getKeyBoard() {
		return new KeyBoard("logi", 8000);
	}
	
	@Bean
	public Computer getComputer() {
		return new Computer("intel", "samsung", "nbdi", 5000);
	}
	@Bean(name="hojun")
	public Computer getComputerSuper() {
		Computer computer=new Computer();
		computer.setCpu("tsmc");
		computer.setMaker("sambo");
		computer.setGraphicCard("gc");
		computer.setPrice(7000);
		return computer;
	}

}
