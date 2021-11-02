<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


<script type="text/javascript">
  $(function(){
	    $("button#stud").click(function(){
	    	$.ajax({
	    		url:'/Web/studentList.do',
	    		type:'POST',	    		
	    		dataType:'json',
	    		success:function(v){
	    			console.log(v);
	    			/* $.each(v,function(index,dom){
	    				console.log(dom.studno+' '+dom.name);
	    			}); */
	    		},
	    		error:function(e){
	    			alert('error'+e);
	    		}
	    	});
	    });
	    
	    $("button#emp").click(function(){
	    	$.ajax({
	    		url:'/Web/EmpList.do',
	    		type:'POST',	    		
	    		dataType:'json',
	    		success:function(v){
	    			console.log(v);	    			
	    		},
	    		error:function(e){
	    			alert('error'+e);
	    		}
	    	});
	    });
	    
	    $("button#dept").click(function(){
	    	$.ajax({
	    		url:'/Web/DeptInfo.do',
	    		type:'GET',	  
	    		data:{no:10},
	    		dataType:'json',
	    		success:function(v){
	    			console.log(v);	    			
	    		},
	    		error:function(e){
	    			alert('error'+e);
	    		}
	    	});
	    });
  });
</script>  
</head>
<body>
  <button id="stud">Student</button>
  <button id="emp">EMP</button>
  <button id="dept">DEPT</button>
</body>
</html>





















