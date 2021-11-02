<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
  function ajaxProcess(url,dataType,type,state){
	  $.ajax({url:url,
		   dataType:dataType,
		   type:type,
		   success:function(value){			   
			 switch (state) {
			case 'str':
				$("span").text(value);
				break;
			case 'obj':
				/* for(var i in value){
					for(var j in value[i]){
						console.log(j+' '+value[i][j]);
					}
				} */				
				
				$(value).each(function(index,dom){					
					console.log(index+' '+dom.empno+' '+dom['empno']);
					console.log(index+' '+dom.ename+' '+dom['ename']);
					console.log(index+' '+dom.sal+' '+dom['sal']);
					console.log(index+' '+dom.job+' '+dom['job']);
				});				
				break;
			default:
				break;
			}
		   }});
  } 
  
  $(function(){
	 $("button").click(function(){
		if(this.id=='btn1'){
			ajaxProcess('/web/jQuery/ajaxData/dataValue1.jsp','text','POST','str');
		}
		else if(this.id=='btn2'){	
			ajaxProcess('/web/jQuery/ajaxData/dataValue2.jsp','text','POST','str');
		}
		else if(this.id=='btn3'){	
			ajaxProcess('/web/jQuery/ajaxData/dataValue3.jsp','json','POST','obj');
		}
	 });
  });
 </script>
</head>
<body>
  <button id="btn1">Text1</button>
  <button id="btn2">Text2</button>
  <button id="btn3">JSON</button><br>
  <span id="show"></span>
</body>
</html>




