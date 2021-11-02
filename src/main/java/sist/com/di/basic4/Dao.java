package sist.com.di.basic4;

import javax.inject.Inject;

import org.springframework.stereotype.Component;

@Component
public class Dao {
		
	//Resource(name="SqlSessionFactoryBean")
	//@Autowired
	@Inject
	private SqlSessionFactoryBean bean;	//������ �����ϰ� �ִ� ��ü�� �������� ��� �����ִ� ��.
	public SqlSessionFactoryBean getBean() {
		return bean;
	}
	public void setBean(SqlSessionFactoryBean bean) {
		this.bean = bean;
	}
	public void select() {
		System.out.println(bean.toString()+"select");
		//bean.hashCode();} //dao�� SqlSessionFactoryBean�� ����(bean:������ü)�ؼ� ��� ����
	}
}
