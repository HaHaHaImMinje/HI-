package sist.com.aop.basic1;

public class MyBatisDao implements Dao{
	@Override
	public void appInsert(int data)  {
		// TODO Auto-generated method stub			
		System.out.println("appInsert");		
	}
	@Override
	public void appUpdate(double d) {
		// TODO Auto-generated method stub		
		System.out.println("appUpdate");	
	}
	@Override
	public void appDelete() {
		// TODO Auto-generated method stub		
		int rs=5/0;
		System.out.println("appDelete");
		
		
	}
	

}
