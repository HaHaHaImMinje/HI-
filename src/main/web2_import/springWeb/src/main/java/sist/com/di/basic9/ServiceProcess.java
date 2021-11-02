package sist.com.di.basic9;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.Setter;
import lombok.ToString;

/*@ToString
@Setter
@Getter*/
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ServiceProcess {	
	private String serviceName;
	private int serviceTime;
	private String serviceKind;
	
	
	public static void main(String[] args) {
		ServiceProcess s=new ServiceProcess("javaService",500,"Front");
		System.out.println(s);
		
		
		
	}



}
