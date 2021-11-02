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
  function ajaxProc(url,type,dataType){
	  $.ajax({
		     url:url,type:type,dataType:dataType,
		     success:function(v){
		    	$("div").text(v);
		    	
		      }
		     });
  }
  $(function(){
	 $("BUTTON").click(function(){
		 ajaxProc(this.id,this.lang,this.name);
	 });
  });
 </script>
</head>
<body>
  <button id="/web/student.do?cmd=stud" lang="GET" name="text">STUDENT</button>
  <button id="/web/professor.do?cmd=professor" lang="POST" name="html">PROFESSOR</button>
  <br>
  <div></div>

</body>
</html>















