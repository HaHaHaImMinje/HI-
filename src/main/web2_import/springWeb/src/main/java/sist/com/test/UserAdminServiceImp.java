package sist.com.test;

public class UserAdminServiceImp implements UserService {
	private UserDao dao;

	@Override
	public void register() {
		// TODO Auto-generated method stub
		dao.selectJdbc();
		
	}

	@Override
	public void findUser() {
		// TODO Auto-generated method stub
		
	}

	
}
