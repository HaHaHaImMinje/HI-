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
	/* 	$(function() {
	
	 jQuery(function){
	 alert('test')
	
	 }
	 });
	 */
	$(function() {
		//$("button").click(function() { //clic은 콜백 function은 클릭을 호출해서 구현된다.
			/* alert(this.firstChild.nodeValue); //this는 버튼
			alert(this.innerHTML);
			alert($(this).html());
			alert($(this).text());//console 선호해서 사용해라! */
			//this.firstChild.nodeValue = this.firstChild.nodeValue+'짱';
			//$(this).html($(this).html()+'짱'); //안은 Set개념 밖은 Get개념
			//alert($(this).html);
		//});
		//document.getElemetById("one").innerHTML='t';
		
		$("pre#one").click(function(){ //아이디가 one인 것을 부른다
			alert('test');
		});
		
		$("#one").click(function(){ //아이디가 one인 것을 부른다
			alert('button');
		});
	});
</script>
</head>
<body>
	<button id = "one"><b>송인효</b></button>
	<button>김소연</button>
	<button>도경진</button>
	<button>김태라</button>
	<pre id = "one">원우야 놀자 </pre> 
	<!-- pre, button 노드가 다르기 때문에 아이디 값 같아도 문제없다 -->
	
	
</body>
</html>