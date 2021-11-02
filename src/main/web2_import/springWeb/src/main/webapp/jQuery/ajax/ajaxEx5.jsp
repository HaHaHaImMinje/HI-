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
  $(function(){
	 $("input#ajax1").click(function(){
		$.ajax({
			url:'/web/ajaxDemo.do?cmd=ajaxDemo',
			type:'GET',
			dataType:'text',
			data:{search:'AAA',data:'bbb'},
			success:function(v){
				alert(v);
			}
		}); 
	 });
  });
 </script>
</head>
<body>
<input type="button" value="Ajax1" id="ajax1">

</body>
</html>