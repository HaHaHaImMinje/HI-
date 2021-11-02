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
	/*  $(document).mousemove(function(e){
		 //$("p").text("x:"+e.pageX+" Y"+e.pageY);
	 }); */
	 /* $(document).mousedown(function(e){
		if(e.which==1){
	           $("img").animate({width:"+2000px",height:"+2000px"},3000);		
		} 
		else if(e.which==3){
	           $("img").animate({width:"100px",height:"100px"},1000);		
		} 
		else if(e.which==2){
	           $("img").attr({src:'/web/imgBook/30SBSG2020.jpg'});		
		} 
	 }); */
	 
	/*  $("p").click(function(){
		$("span").trigger('tig'); 
	 });
	 $("pre").click(function(){
			$("span").trigger('trig'); 
		 });
	 $("span").bind('tig',function(){
		 //alert($(this).text());
		 $(this).html("<font size=6 color=red>JQuery</font>");
	 });
	 
	 $("span").bind('trig',function(){
		 //alert($(this).text());
		 $(this).html("<font size=6 color=blue>JQuery</font>");
	 }); */
	 
	 $(document).click(function(e){
		 
		 console.log(e.pageX+' '+e.pageY);
		 //$("img").attr({width:e.pageX,height:e.pageY});
		 
	 });
  });
 </script>
</head>
<body>
<img  src="/web/imgBook/01TCSC2005.jpg" width="50" height="50"><br>
<!-- <p></p>
<p>PTAGCLIK</p>
<div>DIVCLICK</div>
<pre>PRECLICK</pre>

<span id="s1">sp1</span>
<span id="s2">sp2</span>
<span id="s3">sp3</span>
 -->
</body>
</html>


