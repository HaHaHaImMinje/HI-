package sist.com.di.basic3;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

@Component(value="Process")
public class SystemProcess {	
	@Resource(name="oracleDataBase")
	private DataBaseSytstem dataBaseSytstem;

	public DataBaseSytstem getDataBaseSytstem() {
		return dataBaseSytstem;
	}
	@Resource(name="mySqlSystem")
	public void setDataBaseSytstem(DataBaseSytstem dataBaseSytstem) {
		this.dataBaseSytstem = dataBaseSytstem;
	}
	

}
