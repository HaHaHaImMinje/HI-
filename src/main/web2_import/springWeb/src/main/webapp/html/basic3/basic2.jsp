<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ���⿹��</title>
</head>
<body>
  <h3>�������⿹��</h3>
  <form action="basic2Result.jsp">
    <fieldset style="width: 600px;">
      <legend>��������</legend>
      ����:<input type="text" name="p_name"><br>
      ��ȭ:<input type="tel" name="p_tel" placeholder="00*-000*-0000" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}">
      �̸�:<input type="email" name="p_email" placeholder="000@***.***">
      <p>
      ������:<input type="text" size="40" name="book_title"><br>
      ����   :<input type="range" value="1" min="1" max="10" name="amount" onchange="updateRange(this);">
         <output id="rangeValue">1��</output><br>
     ���������<input type="date" name="last_date" min="2015-05-09" ><br>
     ���ɽð�<input type="time" name="time_from" min="09:00" max="18:00">
     ���� <input type="time" name="time_until" min="09:00" max="18:00">����<br>
   <hr>
   <input type="submit" value="�����ϱ�">   
    </fieldset> 
  
  </form>
  <script type="text/javascript">
   function updateRange(obj){
	   document.getElementById("rangeValue").innerHTML=obj.value+'��';
   }
  </script>
</body>
</html>




