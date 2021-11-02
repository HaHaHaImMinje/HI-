package sist.com.di.basic4;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class SqlSessionFactoryBean {
	
	/* @Autowired //�ڵ����� ��������. */
	/* @Inject */
	
	@Resource(name = "oracleDbms") //?????
	private Dbms dbms;

	@Override
	public String toString() {
		return "SqlSessionFactoryBean [dbms=" + dbms + "]";
	}

}
