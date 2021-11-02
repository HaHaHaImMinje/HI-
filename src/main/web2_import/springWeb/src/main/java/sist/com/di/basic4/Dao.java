package sist.com.di.basic4;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Dao {
	
	//@Resource(name="sqlSessionFactoryBean")
	//@Autowired
	@Inject
	private SqlSessionFactoryBean bean;
	public SqlSessionFactoryBean getBean() {
		return bean;
	}
	public void setBean(SqlSessionFactoryBean bean) {
		this.bean = bean;
	}
	public void select() {
		System.out.println(bean.toString()+"Select");
	}

}
