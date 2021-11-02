<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<button onclick="empShow()">EMP</button>
<button onclick="studentShow()">STUDENT</button>
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
	if(httpRequest.readyState==4&&httpRequest.status==200){
		var str=httpRequest.responseText;
		//console.log(eval(str));
		//console.log(JSON.parse(str));
		var obj=JSON.parse(str);
		for(var i in obj){
			for(var j in obj[i]){
				console.log(j+' '+obj[i][j]);
			}
		}
		
	}
	
}
var empShow=function(){
	httpRequest=getXmlHttpRequest();
	console.log(httpRequest);
	httpRequest.onreadystatechange=view;
	httpRequest.open('GET','empJson.jsp',true);
	httpRequest.send(null);
	
}
var studentShow=function(){
	httpRequest=getXmlHttpRequest();	
	httpRequest.onreadystatechange=viewStudent;
	httpRequest.open('GET','board.xml',true);
	httpRequest.send(null);
	
}
function viewStudent(){
	if(httpRequest.readyState==4&&httpRequest.status==200){
		var xmlData=httpRequest.responseXML;
		//console.log(xmlData);
		var enter=xmlData.getElementsByTagName("board");
		//console.log(enter+' '+enter.length+' '+enter[0]);
		var array=new Array(enter.length);
		//console.log('array='+array);
		
		for(var i=0;i<enter.length;i++){
			var enterChilds=enter[i].childNodes;
			//console.log(enterChilds+' '+enterChilds.length);
			for(var j=0;j<enterChilds.length;j++){
				
				/* var xmlNode=enterChilds[j].nodeType;
				if(xmlNode==1){
				//console.log(enterChilds[j].nodeName);
				 console.log(enterChilds[j].nodeName+' '+enterChilds[j].firstChild.nodeValue);
				} */
				var xmlNode=enterChilds[j].childNodes[0];
				if(xmlNode&& typeof(xmlNode)!="undefined")
				console.log(xmlNode);
			}
			
		}
	}
}
</script>
</body>
</html>






















