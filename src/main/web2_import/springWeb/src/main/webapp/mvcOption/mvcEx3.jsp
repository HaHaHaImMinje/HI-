<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
  $(function(){
	  $("button").click(function(){
		  if(this.id=='c1'){
		  document.location.href='clickAction.do';
		  }else if(this.id=='c2'){
		  document.location.href='mouseAction.do';	  
		  }
	  });
  });
</script>  
</head>
<body>
  <button id="c1">Click1</button>
  <button id="c2">Click2</button>
</body>
</html>