<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.question{
  color: white;
  background: black;
  font-size: 20px;
  
}
.answer{
color: white;
  background: gray;
  font-size: 20px;
}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
  $(function(){
	 $(".question").css("cursor",'pointer');
	 //$(".answer").hide();
	 $("tr[lang='answer']").hide();
	 
	 
	 $(".question").each(function(index){
		$(this).click(function(){
			//alert($(this).html()+' '+index);
			//$(".answer").eq(index).show(1000).slideUp(1000).slideDown(1000).fadeOut(1000).fadeIn(1000);
			$(".answer").eq(index).show(1000);
		}); 
		$(this).dblclick(function(){
			//alert($(this).html()+' '+index);
			$(".answer").eq(index).hide(1000);
		}); 
	 });
  });
 </script>
</head>
<body topmargin="50">
 <table align="center" cellpadding="10" cellspacing="0" border="1" width="70%">
   <tr align="center">
     <td colspan="2">ShowHide</td>
   </tr>
   <tr class="question">
     <td>좋아하는 음식?</td>
   </tr>   
   <tr class="answer" lang="answer">
     <td>라면,순대,김치</td>
   </tr>
   
   <tr class="question" >
     <td>지금 타고 싶은 차?</td>
   </tr>   
   <tr class="answer" lang="answer">
     <td>BMW730</td>
   </tr>
   <tr class="question">
     <td>현재 취미?</td>
   </tr>   
   <tr class="answer" lang="answer">
     <td>등산</td>
   </tr>
   <tr class="question">
     <td>좋아하는 운동</td>
   </tr>   
   <tr class="answer" lang="answer">
     <td>달리기</td>
   </tr>
 </table>
</body>
</html>