<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
   function showMessage(message){
	   alert(message);
   }   
</script>
</head>
<body>
<input type="button" value="Click" onclick="showMessage('<%=str%>')">
<%!
   String str="hello";
%>
<%
 /*  public void method(){
	
  } */
  /*  class Action{
	
   }  */
%>
<%!
   public void showMethod(){
	
   }
   public class Servlet{
	   
   }
%>

</body>
</html>

















