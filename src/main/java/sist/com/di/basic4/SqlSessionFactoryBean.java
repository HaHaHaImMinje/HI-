package sist.com.di.basic4;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class SqlSessionFactoryBean {
	
	/* @Autowired //자동으로 묶여진다. */
	/* @Inject */
	
	@Resource(name = "oracleDbms") //?????
	private Dbms dbms;

	@Override
	public String toString() {
		return "SqlSessionFactoryBean [dbms=" + dbms + "]";
	}

}
