<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
   var httpRequest=null;
   function getXmlHttpRequest(){
	   if(window.ActiveXObject){		      
			   try {
				return new ActiveXObject("Msxml2.XMLHTTP");
			  }catch (e) {
				// TODO: handle exception
			 } 
		} else if(window.XMLHttpRequest){			
			return new XMLHttpRequest();
		} 
		
   }//FUNCTION
   function view(){
	   console.log(httpRequest.readyState+' '+httpRequest.status);
	   if(httpRequest.readyState==4&&httpRequest.status==200){
		   document.getElementsByTagName("div")[0].innerHTML="<B>"+httpRequest.responseText+"</B>"
	   }
   }
   function load(url){
	   httpRequest=getXmlHttpRequest();
	   console.log(httpRequest);
	   httpRequest.onreadystatechange=view;
	   httpRequest.open('GET',url,true);
	   httpRequest.send(null);
	   
   }
   function checkView(){//callback
	   if(httpRequest.readyState==4&&httpRequest.status==200){
		   console.log(httpRequest.responseText);
		   var checkList=httpRequest.responseText.split(",");
		   var temp="";
		   for(var i=0;i<checkList.length;i++){
			   //console.log(checkList[i]);
			   temp+="<input type='checkbox' value="+checkList[i]+" name='ck' onclick='showIndent(this)'>"+checkList[i];
		   }
		   document.getElementById("show").innerHTML=temp;
	   }
   }
   function showIndent(obj){
	   console.log(obj.value+' '+obj.checked);
	   if(obj.checked&& obj.value=='application'){
		   document.getElementById("showSpan").innerHTML="<IMG src='/web/imgBook/01TCSC2005.jpg'>";
	   }else if(!obj.checked&& obj.value=='application'){
		   document.getElementById("showSpan").innerHTML="";
	   }
   }
   function load2(url){
	   httpRequest=getXmlHttpRequest();
	   httpRequest.onreadystatechange=checkView;
	   httpRequest.open('GET',url,true);
	   httpRequest.send(null);
   }
</script>
</head>
<body>
<input type="button" value="contents.jsp" onclick="load('contents.jsp?state=dom')">
<input type="button" value="contents.jsp" onclick="load('contents.jsp?state=click')">
<input type="button" value="contents2.jsp" onclick="load2('contents2.jsp')">
<br>
<div id="show"></div><span id="showSpan"></span>
</body>
</html>










