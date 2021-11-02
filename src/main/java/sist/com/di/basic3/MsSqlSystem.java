package sist.com.di.basic3;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope(value="prototype")
public class MsSqlSystem implements DataBaseSystem{

	@Override
	public void connnect() {
		// TODO Auto-generated method stub
		System.out.println("MySqlSystem connext");
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
