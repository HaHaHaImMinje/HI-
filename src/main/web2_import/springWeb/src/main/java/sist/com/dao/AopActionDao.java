package sist.com.dao;

import org.springframework.stereotype.Repository;

@Repository
public class AopActionDao implements ParentDao {

	@Override
	public void fileAccessData() {
		// TODO Auto-generated method stub
		System.out.println("fileAccessData");
	}

	@Override
	public void dmlProcessData() {
		// TODO Auto-generated method stub
		System.out.println("dmlProcessData");
	}
	

}
