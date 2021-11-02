<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
   //var str=new Date();
   function  click1(){ //선언적함수
	   alert('click1');
       return 10+50;
   }
   var click2=function(){//익명함수
	   alert('click2');
       return function(){
    	   alert('retun1 function');
    	   return function(){
    		   alert('retun2 function');
    	   }
       }
   }
   
  /* var num=click1();
  alert(num); */
  //click2()()();
  var type1='hello';
  var type2=100;
  var type3=function (){};
  var type4={'lesson':'javaScipt','cnt':50,'since':1988};//json
  var array=new Array(type4.length);
  console.log(typeof(type1)=='string');
  console.log(typeof(type2)=='number');
  console.log(typeof(type3)=='function');
  console.log(typeof(type4)=='object');
  console.log(type4.lesson+' '+type4['lesson']);
     var j=0; 
     for(var i in type4){
	 array[j++]=i;
     }
     console.log(array);
 
   
</script>
</head>
<body>
  <input type="button" value="Click1" onclick="click1()">
  <input type="button" value="Click2" onclick="click2()">
</body>
</html>