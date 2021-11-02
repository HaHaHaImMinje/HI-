<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
  $(function(){
	 console.log($("img").length);
	 console.log($($("img")[0]).attr("src"));
	/*  $($("img")[0]).click(function(){
		this.width=500; 
		$(this).attr("height",500);
	 }); */
	/*  $("img").eq(1).click(function(){
		$("img").hide(1000).show(1000).slideUp(1000).slideDown(1000); 
	 }); */
	/*  $("img").click(function(){
		$(this).attr({src:"/web/imgBook/48NGNV2005.jpg",width:500,height:500}); 
	 }); */
	 
	  $("img").click(function(){
		  var cnt=$("img").length;
		 /* for(var i=0;i<cnt;i++){
			 $($("img")[i]).attr("src","/web/imgBook/03HYSC2004.jpg");
		 } */
		 /* for(var i in $("img")){
			 alert($("img").eq(i).attr("src"));
		 } */
		 $("img").each(function(i,dom){
			 //alert(index+' '+$(dom).attr("src"));
			 switch (i) {
			case 0:
				$(dom).attr("width",200);
				break;
			case 1:
				$(this).attr("width",250);
				break;
			case 2:
				$(this).attr("width",300);
				break;
			case 3:
				$(this).attr("width",350);
				break;		
			case 3:
				$(this).attr("width",450);
				break;		
			}
		 });
	 }); 
  });
 </script>
</head>
<body>
<div>
<img src="/web/imgBook/01TCSC2005.jpg" width="100" height="100">
<img src="/web/imgBook/02KCAT2001.jpg" width="100" height="100">
<img src="/web/imgBook/03HYSC2004.jpg" width="100" height="100">
<img src="/web/imgBook/04SAED1907.jpg" width="100" height="100">
<img src="/web/imgBook/05IHCO1804.jpg" width="100" height="100">
</div>
</body>
</html>




