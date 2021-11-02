package sist.com.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*@Data*/
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class MvcBoardVO {
	private int no;
	private String author;
	private String title;
	private String password;
	private String contents;
	private int hit;
	private int ref;
	private int step;
	private int lev;
	private int pnum; 
	private int reply;
	private String regdate;
	private String fileName;
	private String id;
	private String job;

}
