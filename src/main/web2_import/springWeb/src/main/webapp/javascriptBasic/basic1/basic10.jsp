<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
   
    var paramType=function(p){
   var div=document.getElementById("showDv");      
	   switch (typeof(p)) {
	case 'string':	
		div.innerHTML="<FONT COLOR='RED'>StringAction</FONT>"
		break;
	case 'number':	
		div.innerHTML="<ul><li>NumberAction</li></ul>"
		break;
	case 'object':
		if(Array.isArray(p)){
			div.innerHTML="<b>ArrayItem</b>";
		}else{
			div.innerHTML="<b>JSonItem"+p.name+" "+p.since+"</b>";
		}
		break;	
	case 'function':		
		div.innerHTML="<h1>FunctionAction</h1>";
		p()();
		break;
	case 'undefined':		
		div.innerHTML="<h3>undefinedAction</h3>";
		break;

	default:
		break;
	}
   } 

</script>
</head>
<body>
<input type="button" value="number" onclick="paramType(10)">
<input type="button" value="string" onclick="paramType('str')">
<input type="button" value="object" onclick="paramType({name:'java',since:1991})">
<input type="button" value="objectArray" onclick="paramType([])">
<input type="button" value="function" onclick="paramType(function(){alert('functionTest');return function(){alert('return alert')} })">
<input type="button" value="undefined" onclick="paramType()"><br><br>

<div id="showDv" style="border: solid 2px; border-color: blue; width: 400px;height: 200px;"></div>

</body>
</html>