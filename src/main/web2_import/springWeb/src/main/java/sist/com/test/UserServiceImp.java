package sist.com.test;

public  class UserServiceImp implements UserService {
	private UserDaoJdbcImp dao;
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
