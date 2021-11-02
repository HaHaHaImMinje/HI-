<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
  $(function(){
	  $("span").click(function(e){
		  //$("span").eq(0).offset({left:200,top:200});  
		  $(this).offset({left:(this.id=='sp1'?e.pageX+100:e.pageX+200),top:200});		 
	  });
	  
	  $("h1#h1,h2#h2").click(function(){
		alert($(this).offset().left+' '+$(this).offset().top);
	  });	 
  $("select#sel1").change(function(){
	  var file=null;
	  switch ($(this).val()) {
	    case "java":
	    	file='/web/imgBook/02KCAT2001.jpg';
		break;
	    case "xml":
	    	file='/web/imgBook/03HYSC2004.jpg';
			break;
	    case "oracle":		
	    	file='/web/imgBook/04SAED1907.jpg';
			break;
	    case "jsp":	
	    	file='/web/imgBook/05IHCO1804.jpg';
			break;
	
	} 	 
	  $("img").attr({src:file});
    });
  $("textarea").keyup(function(){
	 var inputLen=$(this).val().length;
	 var len=0;
	 len=50-inputLen;
	 $("b").text(len);
	 if(len>0){
		 $(this).css('color','black');
	 }else{
		 alert('Stop Write!');	
		 $(this).val('');
		 $(this).css('color','red');
	 }
  });
});
 </script>
</head>
<body>
 <!-- <span id="sp1">Spring</span>
 <span id="sp2">Oracle</span>
 <h1 id="h1">HelloJQuery1</h1> 
 <h2 id="h2">HelloJQuery2</h2>
 <select id="sel1">
   <option value="java">java</option>
   <option value="oracle">oracle</option>
   <option value="jsp">jsp</option>
   <option value="xml">xml</option>
 </select><br>
 <img alt="" src="/web/imgBook/01TCSC2005.jpg"> -->
 <div>
    <p>Contents...</p>
    <h1>50/<B>0</B></h1>
    <textarea rows="30" cols="120"></textarea>
 </div>
</body>
</html>





