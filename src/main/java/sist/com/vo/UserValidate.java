package sist.com.vo;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class UserValidate implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return UserBean.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		UserBean userBean=(UserBean)target;
		ValidationUtils.rejectIfEmpty(errors, "name", "user.name.empty");
		ValidationUtils.rejectIfEmpty(errors, "email", "user.email.empty");
		ValidationUtils.rejectIfEmpty(errors, "gender", "user.gender.empty");
		ValidationUtils.rejectIfEmpty(errors, "item", "user.item.empty");
		System.out.println("---------------------------------------------");
		if(!(userBean.getName().length()>=2&& userBean.getName().length()<=6)) {
			errors.rejectValue("name", "user.name.len");
		}
		if(userBean.getEmail().indexOf("@")<0) {
			errors.rejectValue("email", "user.email.invalid");
		}
	}
	
	

}
