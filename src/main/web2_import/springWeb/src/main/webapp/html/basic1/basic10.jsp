<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
   ol li{
     font-size: 50px;
     font-weight: bold;
     font-family: 휴먼매직체;
   }
</style>
</head>
<body>

<!-- <ul style="circle">
  <li>이미래
    <ol style="1">
       <li>재일</li>
       <li>일원</li>
       <li>우진</li>
       <li>민지</li>
    </ol>
  </li>
  <li>도경진</li>
  <li>박성종</li>
  <li>정래현</li>
</ul>
 -->
 
<input type="button" alt="u1" value="송민제" onclick="listShow(this)" name="김치,라면,순대"> 
<input type="button" alt="u2" value="주소연" onclick="listShow(this)" name="해물,파스타,레몬">
<input type="button" alt="u3" value="김태라" onclick="listShow(this)" name="밥,고기,빵">
<input type="button" alt="u4" value="도경진" onclick="listShow(this)" name="짜장,짬뽕,양파"> <br>
<ul id="u1">
</ul>
<ul id="u2">
</ul>
<ul id="u3">
</ul>
<ul id="u4">
</ul>

 <script type="text/javascript">
    function listShow(yj){
    	//console.log(yj);
    	var ul=document.getElementById(yj.alt);
    	var state=yj.name.split(',');
    	var temp="";
    	 for(var i=0;i<state.length;i++){
    		 temp+="<li>"+state[i]+"</li>";
    	} 
    	
    	ul.innerHTML=temp;    	
    }
 </script>
 </body>
</html>




