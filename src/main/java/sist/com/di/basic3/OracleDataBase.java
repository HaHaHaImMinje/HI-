package sist.com.di.basic3;

import javax.annotation.PostConstruct;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope(value="singleton")
public class OracleDataBase implements DataBaseSystem{

	@PostConstruct
	public void initDataBase() {
		System.out.println("initDataBase");
	}
	
	@Override
	public void connnect() {
		// TODO Auto-generated method stub
		System.out.println("OravleDataBase connect");
	}

	@Override
	public void find() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void result() {
		// TODO Auto-generated method stub
		
	}
	

}
