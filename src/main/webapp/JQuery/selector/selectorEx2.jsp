<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="functions"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		console.log($("img").length);	//img ���̸� �ҷ�����. 
		console.log($($("img")[0]).attr("src"));	//
		/* 	$($("img")[0]).click(function(){
			this.width=500;	
			$(this).attr("height",500);
			}); *///Ŭ���� ����Ŀ���� ���
		/*  $("img").eq(1).click(function(){
			$("img").hide(1000).show(1000).slideUp(1000).slideDown(1000); //��� img�� ����� ->�������-> �÷��� ���ְ�-> ������ ���ְ�
		}); 
		 */
		/* $("img").click(function(){
			$(this).attr({src: "/web/Himage/KakaoTalk_20210808_144228756_12.jpg",width:500,height:500}) //���� Ŭ���� Ŭ������ ũ�� Ŀ����
		});  */

		$("img").click(function() {
			var cnt = $("img").length;
			/* for (var i = 0; i < cnt; i++) {
				$($("img")[i]).attr("src","/web/Himage/KakaoTalk_20210808_144228756_07.jpg"); //���� Ŭ���� ��ü�� �� �������� �ٲٱ�
			} */
			 for(var i in $("img")){
				alert($("img").eq(i).attr("src"));
			} 
			
		/* 	$("img").each(function(index, dom) { //��庰�� ���� �����̵��� . img �������� index���´�.
				//alert(index+''+$(dom).attr("src")); //index ����

				switch (index) {
				case 0:
					$(this).attr("width", 200); //$(this) ���̺귯�� ����� �θ��� ��  $(�ȿ��ִ� �͵��� ������ �ü��ִ�.)this�� ��ư�� ���� �پ��ִ�
					break;
				case 1:
					$(this).attr("width", 250);
					break;
				case 2:
					$(this).attr("width", 300);
					break;
				case 3:
					$(this).attr("width", 350);
					break;
				case 3:
					$(this).attr("width", 450);
					break;
				} 

			});*/
		});
	});
</script>
</head>
<body>
	<div>
		<img src=" /web/Himage/KakaoTalk_20210808_144228756_01.jpg"
			width="300" height="300"> <img
			src=" /web/Himage/KakaoTalk_20210808_144228756_02.jpg" width="300"
			height="300"> <img
			src=" /web/Himage/KakaoTalk_20210808_144228756_03.jpg" width="300"
			height="300"> <img
			src=" /web/Himage/KakaoTalk_20210808_144228756_04.jpg" width="300"
			height="300"> <img
			src=" /web/Himage/KakaoTalk_20210808_144228756_12.jpg" width="300"
			height="300">
	</div>
</body>
</html>