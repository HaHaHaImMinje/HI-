<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8" http-equiv="refresh" content="100;url=/web/html/basic1/basic8.jsp">
<title>Insert title here</title>
<script type="text/javascript">
      var a="java";
      function injectValue(obj){
    	  console.log(obj.id);
    	 /*  if(obj.id=='y')
    	  document.getElementById("msg").value='��������';
    	  else if(obj.id=='j')
        	  document.getElementById("msg").value='���ϼ���';
    	  else if(obj.id=='m')
        	  document.getElementById("msg").value='��������';
    	  else
    		  document.getElementById("msg").value='�ҿ�����'; */
    	 switch (obj.id) {
		    case 'y':
			document.getElementById("msg").value='��������';
			break;
		    case 'j':
				document.getElementById("msg").value='���ϼ���';
				break;

		default:
			break;
		}
      }
</script>
</head>
<body>
  <!--  &lt;&gt; &amp;&quot;&nbsp; -->
   <!-- <marquee direction="left" behavior="alternate" scrollamount="50"> Java And Html</marquee>
   <marquee direction="right" behavior="scroll" scrollamount="60">Spring And JavaScript</marquee> -->
  <!--  <marquee direction="up" behavior="alternate" scrollamount="5" height="500"> Java And Html Up</marquee> -->
  <!--  <marquee direction="down" behavior="scroll" scrollamount="6" height="500">Spring And JavaScript Down</marquee> -->
  <button id="y" onclick="injectValue(this)">����</button>
  <button id="j" onclick="injectValue(this)">����</button>
  <button id="m" onclick="injectValue(this)">����</button>
  <button id="s" onclick="injectValue(this)">�ҿ�</button>
  <input type="text" id="msg" name="msg">
  <!-- <input type="checkbox">
  <input type="radio"> -->
  
</body>
</html>