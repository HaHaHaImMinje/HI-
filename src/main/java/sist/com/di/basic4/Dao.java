package sist.com.di.basic4;

import javax.inject.Inject;

import org.springframework.stereotype.Component;

@Component
public class Dao {
		
	//Resource(name="SqlSessionFactoryBean")
	//@Autowired
	@Inject
	private SqlSessionFactoryBean bean;	//의존성 의존하고 있는 객체에 의존성을 취득 시켜주는 것.
	public SqlSessionFactoryBean getBean() {
		return bean;
	}
	public void setBean(SqlSessionFactoryBean bean) {
		this.bean = bean;
	}
	public void select() {
		System.out.println(bean.toString()+"select");
		//bean.hashCode();} //dao가 SqlSessionFactoryBean에 의존(bean:의존객체)해서 기능 수행
	}
}
