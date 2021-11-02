package sist.com.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductBean {
	private String id;
	private int    pk;
	private String productName;
	private String productPrice;
	private String productOrigin;
	private String productCategory;
	private String fileName;
	private String regdate;
	private String seller;
	
	
	
	

}
