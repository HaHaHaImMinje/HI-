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
		//$("button").click(function() { //clic�� �ݹ� function�� Ŭ���� ȣ���ؼ� �����ȴ�.
			/* alert(this.firstChild.nodeValue); //this�� ��ư
			alert(this.innerHTML);
			alert($(this).html());
			alert($(this).text());//console ��ȣ�ؼ� ����ض�! */
			//this.firstChild.nodeValue = this.firstChild.nodeValue+'¯';
			//$(this).html($(this).html()+'¯'); //���� Set���� ���� Get����
			//alert($(this).html);
		//});
		//document.getElemetById("one").innerHTML='t';
		
		$("pre#one").click(function(){ //���̵� one�� ���� �θ���
			alert('test');
		});
		
		$("#one").click(function(){ //���̵� one�� ���� �θ���
			alert('button');
		});
	});
</script>
</head>
<body>
	<button id = "one"><b>����ȿ</b></button>
	<button>��ҿ�</button>
	<button>������</button>
	<button>���¶�</button>
	<pre id = "one">����� ���� </pre> 
	<!-- pre, button ��尡 �ٸ��� ������ ���̵� �� ���Ƶ� �������� -->
	
	
</body>
</html>