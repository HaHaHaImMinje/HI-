<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
  function ajaxAction(url,type,dataType){
	  $.ajax({
		 url:url,
		 type:type,
		 dataType:dataType,
		 success:function(v){
			 console.log(v);
		 }
	  });
  }
  $(function(){
	  $("button").click(function(){
		 if(this.id=='stud'){
			 ajaxAction('/Web/studAjax.do','GET','json');
		 }if(this.id=='map'){
			 ajaxAction('/Web/mapAjax.do','POST','json');
		  
		 }if(this.id=='object'){
			 ajaxAction('/Web/ObjectAjax.do','POST','json');
		 } 
	  });
  });
</script>  
</head>
<body>
    <button id="stud">Student</button>
    <button id="map">MapJson</button>
    <button id="object">ObjectValue</button>
</body>
</html>










