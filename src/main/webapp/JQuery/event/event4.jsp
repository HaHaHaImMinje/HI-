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
		/* $("span").click(function(e){
		//$("span").eq(0).offset({left:200,top:100}); //offset 함수 top하고 left를 반환하는 함수
		$(this).offset({left:(this.id=='sp1'?e.pageX+100:e.pageX+200),top:200});
		//console.log($("span").eq(0).offset());   
		//console.log($("span").eq(1).offset()); 
		});*///<span>click
		$("h1#h1,h2#h2").click(function() {
			alert($(this).offset().left + ' ' + $(this).offset().top);

		});

		$("select#sel1").change(function() {
			var file = null;
			switch ($(this).val()) {
			case "java":
				file = '/web/images/그랜저.jpg';
				break;
			case "oracle":
				file = '/web/images/카니발.jpg';
				break;
			case "jsp":
				file = '/web/images/산타페.jpg';
				break;
			case "xml":
				file = '/web/images/아이오닉7.jpg';
				break;
			default:
				break;
			}
			$("img").attr({src : file});
		});
		
		$("textarea").keyup(function(){
			var inputLen=$(this).val().length;
			var len=0;
			len=50-inputLen;
			$("b").text(len);
			if(len>0){
				$(this).css('color','black');
			}else{
				alert('한도 숫자를 초과하였습니다.');
				$(this).text('');
				$(this).css('color','red');
			}
		});
	});
</script>
</head>
<body>
	<!-- 	<span id="sp1">Spring</span>
	<span id="sp2">Oracle</span>
	<h1 id="h1">HelloJQuery1</h1>
	<h2 id="h2">HelloJQuery2</h2>
	<select id="sel1">
		<option value="java">그랜저</option>
		<option value="oracle">카니발</option>
		<option value="jsp">산타페</option>
		<option value="xml">아이오닉7</option>
	</select>
	<br>
	<img src="/web/images/현대로고.jpg"> -->

	<div>
		<p>Contents!!</p>
		<h1>50/<B></B></h1>
		<textarea rows="30" cols="120"></textarea>
	</div>
</body>
</html>






