package sist.com.di.basic4;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component(value="oracleDbms")
@Scope("singleton")
public class Dbms {
	@Value("localhost:1521:orcl")
	private String url;
	@Value("apple")
	private String account;
	@Value("500")
	private int connect;
	@Value("-1")
	private int waitTime;
	
	@PostConstruct
	public void connect() {
		System.out.println("connect.....");
	}
	@Override
	public String toString() {
		return "Dbms [url=" + url + ", account=" + account + ", connect=" + connect + ", waitTime=" + waitTime + "]";
	}
	
	
}
