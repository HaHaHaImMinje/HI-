<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
  /* $(function(){
	 
  }); */
  /* jQuery(function(){
	  alert('Test');
  }); */
   $(function(){
	  //document.getElementsByTagName("buttton")
	  //$("button").click(function(){
		  /* alert(this.firstChild.nodeValue);
		  alert(this.innerHTML);
		  alert($(this).html());
		  alert($(this).text()); */
		  //this.firstChild.nodeValue=this.firstChild.nodeValue+'¯';
		  //this.innerHTML=this.innerHTML+'¯';
		  //$(this).html($(this).html()+'¯');
		  //alert($(this).text());
	  //});
	  
	  //document.getElementById("one").innerHTML='t';
	  $("#one").click(function(){
		  alert('button#one');
	  });
	  $("img#one").click(function(){
		  alert('img');
	  });
   });
 </script>
</head>
<body>
 <button id="one"><b>����ȿ</b></button><button>��ȣ��</button>
 <button>�ּҿ�</button><button>��ҿ�</button><br>
 <!-- <img id="one" src="/web/imgBook/01TCSC2005.jpg" width="50" height="50"> -->
 
</body>
</html>





