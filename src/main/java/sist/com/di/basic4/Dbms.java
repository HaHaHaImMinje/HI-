package sist.com.di.basic4;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component(value = "oracleDbms") // value�� ���ָ� class�� ���ڸ� �ҹ��ڷ� �� �̸��� component�� �̸��� �ȴ�.
@Scope("singleton")
public class Dbms {
	@Value("localhost:1521:oracle")
	private String url;
	@Value("apple")
	private String account;
	@Value("500")
	private int connect;
	@Value("-1") //-1�� ����ؼ� ��ٸ���.
	private int waitTime;
	
	@PostConstruct //���� ���� �ҷ����� �ҽ��̴�.
	public void connect() {
		System.out.println("connect....");
	}
	
	@Override
	public String toString() {
		return "Dbms [url=" + url + ", account=" + account + ", connect=" + connect + ", waitTime=" + waitTime + "]";
	}
	
}
