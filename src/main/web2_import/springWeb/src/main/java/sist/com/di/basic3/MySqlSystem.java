package sist.com.di.basic3;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope(value="prototype")
public class MySqlSystem implements DataBaseSytstem{

	@Override
	public void connect() {
		// TODO Auto-generated method stub
	   System.out.println("MySqlSystem connect");	
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
