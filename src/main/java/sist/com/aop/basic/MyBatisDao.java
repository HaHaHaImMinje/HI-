package sist.com.aop.basic;

public class MyBatisDao implements Dao {

	@Override
	public void appInsert(int data) { // �����Ͻ����� 1
		// TODO Auto-generated method stub
		System.out.println("appInsert");
	}

	@Override
	public void appUpdate(double dio) { // �����Ͻ����� 2
		// TODO Auto-generated method stub
		System.out.println("appUpdate");
	}

	@Override
	public void appDelete() { // �����Ͻ����� 3
		// TODO Auto-generated method stub
		int rs = 5/0;
		System.out.println("appDelete");
	}

}
