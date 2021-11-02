package sist.com.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor //�����ڸ� �ڵ����� �������ִ� ������̼�
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
