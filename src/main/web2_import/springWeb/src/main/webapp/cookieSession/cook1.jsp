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
	  
  });
</script>  
</head>
<body>
<form action="/Web/cookieTest.do" method="POST">
  <input type="radio" value="red" name="color">RED
  <input type="radio" value="blue" name="color">BLUE
  <input type="radio" value="cyan" name="color">CYAN
  <input type="radio" value="yellow" name="color">YELLOW
  <input type="submit" value="Send">
</form>
</body>
</html>


