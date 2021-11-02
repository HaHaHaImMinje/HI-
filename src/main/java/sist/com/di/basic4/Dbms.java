package sist.com.di.basic4;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component(value = "oracleDbms") // value를 안주면 class의 앞자리 소문자로 된 이름이 component의 이름이 된다.
@Scope("singleton")
public class Dbms {
	@Value("localhost:1521:oracle")
	private String url;
	@Value("apple")
	private String account;
	@Value("500")
	private int connect;
	@Value("-1") //-1은 계속해서 기다린다.
	private int waitTime;
	
	@PostConstruct //가장 먼저 불려지는 소스이다.
	public void connect() {
		System.out.println("connect....");
	}
	
	@Override
	public String toString() {
		return "Dbms [url=" + url + ", account=" + account + ", connect=" + connect + ", waitTime=" + waitTime + "]";
	}
	
}
