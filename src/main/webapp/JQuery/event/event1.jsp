<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="functions"
	uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type ="text/css">
.question{
color : white;
background:black;
font-size :20px;
}
.ansewer{
background:gray;
font-size :20px;
}
</style>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function(){
		$(".question").css("cursor",'pointer');
		$(".answer").hide();
		$(".question").each(function(index){ //태그 필요 없이 노드 리스트를 한꺼번에 사용할 때 많이 사용한다. $(".question")
			$(this).click(function(){//alert($(this).html()+' '+index); 확인 후 주석 처리
			$(".answer").eq(index).show(1000).slideUp(1000).slideDown(1000).fadeOut(1000).fadeIn(1000);	
		}); // question이라는 class중 노드를 연결하는 <tr class= "question">을 말한다.	
			$(this).dblclick(function(){
				//alert($(this).html()+' '+index); 확인 후 주석처리
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
			<td>좋아하는 차?</td>
		</tr>
	<tr class="answer">
		<td>전기차,세단,SUV</td>
	</tr>
	<tr class="question">
		<td>타고 싶은 차?</td>
	</tr>
	<tr class="answer">
		<td>Ev6</td>
	</tr>
	<tr class="question">
		<td>현재 취미?</td>
	</tr>
	<tr class="answer">
		<td>러닝</td>
	</tr>
	</table>
</body>
</html>