<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
  $(function(){
	 $(document).keydown(function(e){
		//$("div").append("Down<font size=3 color=red>["+e.keyCode+"]</font><br>"); 
		console.log('keyDown');
		$("div.a").eq(0).append('<b>keyDown</b>');
	 });
 	 
	 $(document).keypress(function(e){
		 console.log('keyPress');
		 if(e.keyCode==97){
			 $("img").animate({"marginLeft":"-=50px"},0);
		 }
		 if(e.keyCode==98){
			 $("img").animate({"marginLeft":"+=50px"},0);
		 }
		 if(e.keyCode==99){
			 $("img").animate({"marginTop":"+=50px"},0);
		 }
		 if(e.keyCode==100){
			 $("img").animate({"marginTop":"-=50px"},0);
		 }
		//	$("div").append("Down<font size=3 color=red>["+e.keyCode+"]</font><br>"); 
		 });
	 $(document).keyup(function(e){
		// alert('keyUp');
		 
		 $("div.b").append('<b>keyUp</b>');
	 });
  });
 </script>
</head>
<body>
<div class="a"></div>
<div class="b"></div>
<!-- <img  src="/web/imgBook/01TCSC2005.jpg" width="50" height="50"><br> -->
</body>
</html>





