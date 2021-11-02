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
	 $("button#all").click(function(){
		$("img").attr('width',function(index){
			return(index+1)*100;
			//return 100;
		}); 
	 });
	 $("button#all2").click(function(){
			$("img").attr({width:function(index){
				return(index+1)*100;
				//return 100;
			},
			height:function(index){
				return (index+2)*300;
			}
			}); 
		 });
	 
	 $("img").click(function(){
		 $(this).attr('width',function(index){
				return(index+1)*100;
				//return 100;
		}); 
	 });
  });
 </script>
</head>
<body>
  <button id="all">AllImage</button>
  <button id="all2">AllImage2</button>
  <br>
  <img alt="" src="/web/imgBook/01TCSC2005.jpg">
  <img alt="" src="/web/imgBook/27SBJT2020.jpg">
  <img alt="" src="/web/imgBook/30SBSG2020.jpg">
</body>
</html>