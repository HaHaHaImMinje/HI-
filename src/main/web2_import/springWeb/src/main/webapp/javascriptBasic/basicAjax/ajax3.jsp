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
	if(httpRequest.readyState==4&&httpRequest.status==200){
		 xmlDom=httpRequest.responseXML;
		//console.log(xmlDom);
		printInfo();
	}
	
}
var twitters=[];
function printInfo(){
	console.log(xmlDom);
	var status_list=xmlDom.getElementsByTagName("status");
	for(var i=0;i<status_list.length;i++){
		var status_nodes=status_list[i].childNodes;
		var twitter={};
		for (var x=0;x<status_nodes.length;x++){
			var node=status_nodes[x];
			if(node.nodeType==1){
				var currentName=node.nodeName;				
				if(currentName=='created_at'||currentName=='id'||currentName=='text'){
					console.log(currentName+' '+node.firstChild.nodeValue);
					twitter[currentName]=node.firstChild.nodeValue;
					//twitter[currentName]  twitter['created_at'] twitter.created_at
				}else if(currentName=='user'){
					var user_object=getUserObject(node.childNodes);
					//console.log(user_object);
					twitter['userId']=user_object.id;
					twitter['userName']=user_object.name;
					twitter['screen_name']=user_object.screen_name;
					twitter['location']=user_object['location'];				
				}
			}//if
			
		}//for
		twitters.push(twitter);
	}//for
	drawTwitters();
}
function drawTwitters(){
	  for(var i in twitters){
		  for(var j in twitters[i]){
			  console.log(j+' '+twitters[i][j]);
		  }
	  }
	
}
function getUserObject(user_nodes){
	var user_vo={};
	for(var i=0;i<user_nodes.length;i++){
		var node=user_nodes[i];
		if(node.nodeType==1){
			if(node.nodeName=='id' ||node.nodeName=='name'||node.nodeName=='screen_name'
					||node.nodeName=='location'){
				user_vo[node.nodeName]=node.firstChild.nodeValue;
			}//if
		}//if
	}//for
	return user_vo;
}
  function load(){
	  httpRequest=getXmlHttpRequest();
	  
	  httpRequest.onreadystatechange=view;
	  httpRequest.open('GET','twitter.xml',true);
	  httpRequest.send(null);
  }
</script>
</head>
<body>
<input type="button" value="Twitter" onclick="load()">
</body>
</html>









