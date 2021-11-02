<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">

/* var say='good';
function showFun1(){
	console.log('showFun1');
	console.log(say);
}
function showFun2(){
	 var cnt=50; 지역변수
	console.log('showFun2 cnt='+cnt);
	showFun3();
}
function showFun3(){	 
	console.log('showFun3 cnt='+cnt);
}
cnt=50;
showFun3(); */

/* function showFunction(parm){
	alert('showFunction(param)');
} */
function showFunction(){
	//alert('showFunction()'+arguments.length);
	console.log(arguments+' '+typeof(arguments)+' '+Array.isArray(arguments));
	/* for(i in arguments){
		alert(arguments[i]);
	} */
}
showFunction(10);
showFunction(10,20);
showFunction(10,20,30,3.5,"hi",5>3);
</script>
</head>
<body>
 
</body>
</html>




