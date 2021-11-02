package sist.com.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor //생성자를 자동으로 생성해주는 어노테이션
@AllArgsConstructor
public class ProductBean {
	private String id;
	private int pk;
	private String productName;
	private String productPrice;
	private String productOrgin;
	private String productCategory;
	private String filename;
	private String regdate;
	private String seller;

}
