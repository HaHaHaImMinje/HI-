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
  var path;
  $(function(){
	  $("button").click(function(){
		 if(this.id=='h1'){
			path='/Web/headerEx1.do'; 
		 }
		 if(this.id=='h2'){
			path='/Web/headerEx2.do'; 
		 }
		 if(this.id=='h3'){
			path='/Web/nullPoint.do?no='+this.lang; 
		 }
		 if(this.id=='h5'){
			path='/Web/cast.do'; 
		 }
		 if(this.id=='h6'){
			path='/Web/numberFormat.do'; 
		 }
		 if(this.id=='h7'){
			path='/Web/arithmeticException.do'; 
		 }
		 document.location.href=path;
	  });
	  
  });
</script>  
</head>
<body>
     <button id="h1">HEADER1</button>
     <button id="h2">HEADER2</button>
     <button id="h3" lang="5">NullPoint1</button>
     <button id="h3" lang="50">NullPoint2</button>
     <button id="h5">CastEx</button>
     <button id="h6">NumberForMat</button>     
     <button id="h7">ArithmeticException</button>

</body>
</html>











