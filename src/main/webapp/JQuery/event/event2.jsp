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
		//$("img").mousemove(function(e){ // ��� �̹��� ����
			/* $(document).mousemove(function(e){ // ������ ��ü�� ��ǥ ����
			//$("p").text("x:"+e.pageX+" Y"+e.pageY);  // ���� ��ǥ ��� ��� 
		}); */
		
		/* $(document).mousedown(function(e){ //���콺�� �����ٸ� mousedown
			if(e.which==1){
				$("img").animate({width:"+2000px",height:"+2000px"},3000); //���� Ŀ����
			}	
			else if(e.which==3){ //which�� �ΰ����� ����(���콺 Ŭ��, Ű���� Ŭ��)
				$("img").animate({width:"100px",height:"100px"},1000); // ���� ����
			}	
			else if(e.which==2){
				$("img").attr({src:'/web/images/anya14.jpg'})	// �̹��� �ٲٱ�
			}
			}); */
			
			/* $("p").click(function(){
				$("span").trigger('tig');
			});
			$("pre").click(function(){
				$("span").trigger('trig'); //trig ����� ����
			});
			$("span").bind('tig',function(){ //bind�� ���� (span 4�� ���� 4�� ����)
				//alert($(this).text());
			$(this).html("<font size=6 color=red>JQuery</font>");
			});
			$("span").bind('trig',function(){ //bind�� ����
				//alert($(this).text());
			$(this).html("<font size=6 color=blue>JQuery</font>");
			}); */
			
			$(document).click(function(e){
				//$("img").attr({top:e.pageX,left:e.pageY});
				console.log(e.pageX+' '+e.pageY);
				//$("img").attr({width:e.pageX, heigth:e.pageY});
				$("img").attr({top:pageY});
			});
		});
</script>
</head>
<body>
	<img src="/web/images/anya6.jpg" width="50" height="50"><br>
	<p></p>
	<p>PTAGCLICK </p>
	<div>DIVCLICK</div>
	<pre>PRECLICK</pre>
	
	<span id= "s1">sp1</span>
	<span id= "s2">sp2</span>
	<span id= "s3">sp3</span>
	<span id= "s4">sp4</span>
</body>
</html>