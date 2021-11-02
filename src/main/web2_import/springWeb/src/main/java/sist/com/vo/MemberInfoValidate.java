package sist.com.vo;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class MemberInfoValidate implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return MemberCheckBean.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		MemberCheckBean bean=(MemberCheckBean)target;
		if(bean.getId()==null||bean.getId().length()==0) {
			errors.rejectValue("id", "idgg");
		}
		if(bean.getName()==null||bean.getName().length()==0) {
			errors.rejectValue("name", "name");
		}
		if(bean.getAddr()==null||bean.getAddr().length()==0) {
			errors.rejectValue("addr", "addr");
		}
		if(bean.getPwd()==null||bean.getPwd().length()==0) {
			errors.rejectValue("pwd", "pwd");
		}
		
	}
	
	

}
