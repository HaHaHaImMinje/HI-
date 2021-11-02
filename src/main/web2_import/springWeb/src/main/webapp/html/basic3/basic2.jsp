<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>도서 대출예약</title>
</head>
<body>
  <h3>도서대출예약</h3>
  <form action="basic2Result.jsp">
    <fieldset style="width: 600px;">
      <legend>도서예약</legend>
      성명:<input type="text" name="p_name"><br>
      전화:<input type="tel" name="p_tel" placeholder="00*-000*-0000" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}">
      이멜:<input type="email" name="p_email" placeholder="000@***.***">
      <p>
      도서명:<input type="text" size="40" name="book_title"><br>
      예약   :<input type="range" value="1" min="1" max="10" name="amount" onchange="updateRange(this);">
         <output id="rangeValue">1권</output><br>
     예약희망일<input type="date" name="last_date" min="2015-05-09" ><br>
     수령시간<input type="time" name="time_from" min="09:00" max="18:00">
     에서 <input type="time" name="time_until" min="09:00" max="18:00">사이<br>
   <hr>
   <input type="submit" value="예약하기">   
    </fieldset> 
  
  </form>
  <script type="text/javascript">
   function updateRange(obj){
	   document.getElementById("rangeValue").innerHTML=obj.value+'권';
   }
  </script>
</body>
</html>




