package sist.com.di.basic9;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Component

@Data
/*@Setter
@Getter
@ToString
@NoArgsConstructor
@AllArgsConstructor*/
public class Action {
	private String actionName;
	private int actionCount;
	private String actionMode;

}
