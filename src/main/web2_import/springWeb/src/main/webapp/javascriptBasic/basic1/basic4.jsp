<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
  <script type="text/javascript">
    function callByFunction(name,age,tel,weight){
    	console.log(name+" "+age+" "+tel+" "+weight);
    }
    function callByFunction1(obj){
    	/* console.log(obj.name+' '+obj['name']); */
    	/* for(var i in obj){
    		console.log(i+' '+typeof(i)+' '+obj[i]);
    	} */
    	//console.log(obj.name+' '+obj['name']);
    	var tb=document.getElementById("tb");
    	var tbody=document.getElementById("tbody");
    	tb.style.visibility='visible';
    	var temp="<tr>";
    	for(var key in obj){
    		temp+="<th>"+key+"</th>";
    	}
    	temp+="</tr>"
    	document.getElementById("th").innerHTML=temp;
    	var temp2="<tr>";
    	for(var key in obj){
    		temp2+="<th>"+obj[key]+"</th>";
    	}
    	temp2+="</tr>"
    	tbody.innerHTML=temp2;
    }
  
  </script>
</head>
<body>
   <input type="button" value="CallByValue" onclick="callByFunction('민제',25,'010-6541-1234',55)">
   <input type="button" value="CallByReference"
     onclick="callByFunction1({name:'지수',age:22,tel:'010-3254-1234'})"><br><br><br>
     
     <table id="tb" bordercolor="red" align="center"  border="1" width="80%" cellpadding="0" cellspacing="0" style="visibility: hidden;">
        <thead id="th">
          
        </thead>
        <tbody id="tbody">
        </tbody>
     </table>
     

</body>
</html>









