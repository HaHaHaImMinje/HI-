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
<input type="checkbox" name="all" id="all" value="��ü" onclick="allCheck(this)">��ü
<input type="checkbox" name="location" value="����Ư����">����Ư����
<input type="checkbox" name="location" value="��⵵">��⵵
<input type="checkbox" name="location" value="���">���
<input type="checkbox" name="location" value="����">����
<input type="checkbox" name="location" value="������">������
</body>
</html>