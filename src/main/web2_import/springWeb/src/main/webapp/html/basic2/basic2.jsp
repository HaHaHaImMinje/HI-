<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
   function allCheck(obj){
	   console.log(obj.checked);
	   var nodeList=document.getElementsByName("location");
	   for (var i=0;i<nodeList.length;i++) {
		       nodeList[i].checked=obj.checked;
		
	    }
   }

</script>
</head>
<body>
<input type="checkbox" name="all" id="all" value="전체" onclick="allCheck(this)">전체
<input type="checkbox" name="location" value="서울특별시">서울특별시
<input type="checkbox" name="location" value="경기도">경기도
<input type="checkbox" name="location" value="경상도">경상도
<input type="checkbox" name="location" value="전라도">전라도
<input type="checkbox" name="location" value="강원도">강원도
</body>
</html>