<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
   <script type="text/javascript">
   function sum(x,y,z,k,i){
	   var result=0;
	    for(var i=0;i<arguments.length;i++){
		   var num=arguments[i];
		   if(isNaN(num)){
			   throw new Error('지정한 값은 숫자가 아닙니다'+num);
		   }//if
		   result+=num;
	   }//for 
	   return result; 
	   
   }//function
   console.log(sum(10,20,'삼십',40,50));
   </script>
</head>
<body>

</body>
</html>