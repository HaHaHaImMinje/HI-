<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
  /*  function sayMessage(base,height){
	   return base*height/2;
   }
   console.log(sayMessage(100,25)); */
   
   /* var sayMessage=function(base,height){
	   return base*height/2;
   }
   console.log(sayMessage(100,25)); */ 
   
   /* var sayMessage=new Function('base','height','return base*height/2;');
   console.log(sayMessage(100,25));  */
   
    var param='height, width';
   var formula='return height*width/2';
   var diamond=new Function(param,formula);
   console.log(diamond(10,25)); 
   function showMessage(value){
	   if(arguments.length!=showMessage.length)
		    throw new Error('인수의 수가 다르다..'+arguments.length); 
	   alert('showMessage');
   }
   showMessage(10);
</script>
</head>
<body>

</body>
</html>




