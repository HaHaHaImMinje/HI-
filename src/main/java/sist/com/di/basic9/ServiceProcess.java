package sist.com.di.basic9;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.Setter;
import lombok.ToString;

@Component

@Data
/*@Setter
@Getter*/
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class ServiceProcess {
	@NonNull
	private String serviceName;
	private int serviceTime;
	private String servicekind;

	public static void main(String[] args) {
		ServiceProcess s = new ServiceProcess();
	}

}
