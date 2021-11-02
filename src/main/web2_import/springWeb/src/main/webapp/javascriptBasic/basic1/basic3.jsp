<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">

   /* 변수,if,if else,if elseif else,switch,for,for in,while,do while,break,continue */
   /* [],new Array(5),{} */ 
   
   
   
   /* var num=100,su=50;
   console.log(num);
   if(!(num>=100 && su<=50)){
	   document.writeln('num >=100');
   }else{
	   document.writeln('else');
   } */
   /* var name;
   while(true){
	   name=window.prompt('LessonItem','javaScript');
	   if(name=='javascript'){
		   window.alert('javaScriptChoice');
	   }
	   else if(name=='oracle'){
		   window.alert('OralceChoice');
	   }else{
		   window.alert('OtherChoice');
		   break;
	   }
   }
    */
    /* do{
    	name=window.prompt('LessonItem','javaScript');
    	alert(name);
    	if(name=='quit')break;
    }while(true); */
    var array=[10,20,null,5>3,50,95];
    
    /* for(var i=0;i<array.length;i++){
    	console.log(array[i]);
    } */
    
    /* for(var i in array){
    	if(i%2!=0)
    	console.log(i+" :"+array[i]);
    } */
    /* var obj={'name':'김태라','addr':'판교','major':'심리'};
    console.log(obj.name+' '+obj.addr); */
    var objArray=[{'name':['김태라','전지현','이영애'],'addr':'판교','major':'심리'},
    	          {'name':'이지수','addr':'서울','major':'컴공'},
    	          {'name':'도경진','addr':'서울','major':'컴공'},
    	          {'name':'주소연','addr':'인천','major':'산업'}];
    
    for(var i in objArray){
    	for( var key in objArray[i]){
    		alert(key+":"+objArray[i][key]);
    	}
    }
</script>

</head>
<body>

</body>
</html>










