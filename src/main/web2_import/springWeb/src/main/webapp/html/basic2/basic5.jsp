<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
  select {
	 width: 200px;
	 color: white;
	 background: gray;
   }
</style>
<script type="text/javascript">
  function changeLoc(obj){
	  //alert(obj.value+' '+obj.selectedIndex);
	  var array=new Array(7);
	  array[0]="전체,강남구,강동구,강북구,강서구,관악구,도봉구";
	  array[1]="전체,강릉시,고성군,동해시,삼척시,속초시,양주군,원주시";
	  array[2]="전체,가평군,고양시,덕양구,수원시";
	  array[3]="전체,진주시,김해시,사천시";
	  array[4]="전체,광주시,전주시,순천시,여수시";
	  var loc2=document.getElementById("loc2");
	  if(obj.selectedIndex!=0){
		  loc2.style.display='inline';
	  }else{
		  loc2.style.display='none';
	  }
	  var flag=parseInt(obj.selectedIndex);
	 
	   var temp_view="";
	  if(flag>0 && flag<6){
		  temp_view=array[flag-1].split(",");
	  }
	  loc2.length=1;
	  for(i=0;i<temp_view.length;i++){
		  loc2.options[i]=new Option(temp_view[i],temp_view[i]);//label,value
	  }
  }
</script>
</head>
<body>
  <select id="loc" name="loc" onchange="changeLoc(this)">
    <option selected="selected">전국</option>
    <option value="서울">서울</option>
    <option value="강원">강원</option>
    <option value="경기">경기</option>
    <option value="경남">경남</option>   
    <option value="전남">전남</option>
       
  </select>
  &nbsp;&nbsp;
  <select id="loc2" name="loc2" style="display: none;">
     <option selected="selected">선택하세요</option>
  </select>
</body>


</html>











