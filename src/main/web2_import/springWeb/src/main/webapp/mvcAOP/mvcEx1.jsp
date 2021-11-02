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
	  var path="";
	  $("button").click(function(){
		  switch (this.id) {
		case "action1":	
			path="aopActionDemo1.do";
			break;
		case "action2":
			path="/Web/aopActionDemo2.do";
			break;
		default:
			break;
		}
		  document.location.href=path;
	  });
  });
</script>  
</head>
<body>
   <button id="action1">Action1</button>
   <button id="action2">Action2</button>
</body>
</html>




