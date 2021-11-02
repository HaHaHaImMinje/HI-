<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">


 /* var img=document.createElement('img');
 var br=document.createElement('br');
 img.src='/web/imgBook/01TCSC2005.jpg';
 img.width=300;
 img.height=300;
 function hideImage(){
	 document.body.removeChild(br);
	 document.body.removeChild(img);
 }
 function showImage(){
	 document.body.appendChild(br);
	 document.body.appendChild(img);
 } */ 
	 
/*  function hideImage(){
	 document.getElementById("imgDiv").innerHTML="";
 }
 function showImage(){
	 document.getElementById("imgDiv").innerHTML="<IMG src='/web/imgBook/01TCSC2005.jpg'>"
 }  */
 
function hideImage(){
 document.getElementById("imgDiv").style.visibility='hidden';
}
function showImage(){
 document.getElementById("imgDiv").style.visibility='visible';
}  
</script>
</head>
<body>

   <input type="button" value="hideImage" onclick="hideImage()">
   <input type="button" value="showImage" onclick="showImage()"><br>
   <!-- <div id="imgDiv"></div> -->
   
   <img  id="imgDiv" src="/web/imgBook/01TCSC2005.jpg" style="visibility:hidden; ">
   
</body>
</html>




