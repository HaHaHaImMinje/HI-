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
     font-family: �޸ո���ü;
   }
</style>
</head>
<body>

<!-- <ul style="circle">
  <li>�̷̹�
    <ol style="1">
       <li>����</li>
       <li>�Ͽ�</li>
       <li>����</li>
       <li>����</li>
    </ol>
  </li>
  <li>������</li>
  <li>�ڼ���</li>
  <li>������</li>
</ul>
 -->
 
<input type="button" alt="u1" value="�۹���" onclick="listShow(this)" name="��ġ,���,����"> 
<input type="button" alt="u2" value="�ּҿ�" onclick="listShow(this)" name="�ع�,�Ľ�Ÿ,����">
<input type="button" alt="u3" value="���¶�" onclick="listShow(this)" name="��,���,��">
<input type="button" alt="u4" value="������" onclick="listShow(this)" name="¥��,«��,����"> <br>
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




