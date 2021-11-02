<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
  div{
    background-color: blue;
    border: solid 2px white;
    width: 200px;
    height: 100px;
    float: left;
    color: white;
    font-weight: bold;
  }
</style>
<script type="text/javascript">
    var domFunction1=function(){
    	var div=document.getElementsByTagName("div");//nodeList
    	//div[0].innerHTML='<B>TestDomDiv</B>';
    	
    	console.log(div[0]);
    	for(var i=0;i<div.length;i++){
    		//div[i].firstChild.nodeValue='DivElement'+(i+1);
    		//div[i].innerHTML='ActionDiv';
    		console.log(document.getElementsByTagName("div")[i]);
    		
    	}
    }
    var domFunction2=function(){
    	var p1=document.getElementById("p1");
    	var pNodeList=document.getElementsByTagName("p");
    	console.log(p1==pNodeList[1]);
    	console.log(p1);
    }
</script>
</head>
<body>
  <div></div><div></div><div></div><div></div><br>
  <!-- <p id="p1">pElement1</p>
  <p id="p2">pElement2</p>
  <p id="p3">pElement3</p>
  <p id="p4">pElement4</p> -->
  <input type="button" value="Click1" onclick="domFunction1()">
  <input type="button" value="Click2" onclick="domFunction2()">
</body>
</html>












