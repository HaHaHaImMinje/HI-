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
		//$("img").mousemove(function(e){ // 모든 이미지 선택
			/* $(document).mousemove(function(e){ // 페이지 전체의 좌표 선택
			//$("p").text("x:"+e.pageX+" Y"+e.pageY);  // 사진 좌표 찍는 방법 
		}); */
		
		/* $(document).mousedown(function(e){ //마우스를 누른다면 mousedown
			if(e.which==1){
				$("img").animate({width:"+2000px",height:"+2000px"},3000); //사진 커지기
			}	
			else if(e.which==3){ //which는 부가적인 정보(마우스 클릭, 키보드 클릭)
				$("img").animate({width:"100px",height:"100px"},1000); // 사진 고정
			}	
			else if(e.which==2){
				$("img").attr({src:'/web/images/anya14.jpg'})	// 이미지 바꾸기
			}
			}); */
			
			/* $("p").click(function(){
				$("span").trigger('tig');
			});
			$("pre").click(function(){
				$("span").trigger('trig'); //trig 사용자 정의
			});
			$("span").bind('tig',function(){ //bind는 묶음 (span 4개 여서 4개 나옴)
				//alert($(this).text());
			$(this).html("<font size=6 color=red>JQuery</font>");
			});
			$("span").bind('trig',function(){ //bind는 묶음
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