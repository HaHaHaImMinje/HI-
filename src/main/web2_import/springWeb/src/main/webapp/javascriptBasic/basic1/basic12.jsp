<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

  
<head>
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- Array[],Json {},JavaScriptClass,Ajax -->
<script type="text/javascript">
    
   /*  var array=[10,'string',10.5,
      null,'10',new Date(),function(){alert(alert('testAction'))},
      {����:[{title:'java',contents:['variable','operator','cotrol','inheritance','io']}]},
      'oralce',['sgml','html','xml','sax','dom','dtd','schema'],'spring','python','android',
      new String()];
   console.log(array); */
   
   
   var objectType1=function(){
	   var h2=document.getElementById("title");
	   h2.innerHTML="StudentTable Action";
	   function Student(name,eng,mat,kor){
		   //alert('function Student(name,eng,mat,kor)');
		   this.name=name;
		   this.����=kor;
		   this.eng=eng;
		   this.����=mat;
		   this.getTotal=function(){
			 return (this.���� +this.����+this.eng); 
		   };
		   this.getAvg=function(){
			   return this.getTotal()/3.;
		   }
		   this.toString=function(){
			   return this.name+' '+this.eng+' '+this.����+' '+this.����+' '+this.getTotal()+' '+this.getAvg() ;
		   }
	   }
	   var students=[];
	   var student1=new Student('����',100,80,90);
	   var student2=new Student('�Ͽ�',100,100,100);
	   var student3=new Student('�̷�',80,100,90);
	   var student4=new Student('����',100,80,70);
	   students.push(student1);
	   students.push(student2);
	   students.push(student3);
	   students.push(student4);
	   
	   /* for(var i in students){
		   alert(students[i].toString());
	   } */
	   
	   
   }
   var objectType2=function(){
	   var h2=document.getElementById("title");
	   var p1=document.getElementById("p1");
	   p1.style.visibility='visible';
	   var trhead=document.getElementById("emphead");
	   var head=['EMPNO','ENAME','SAL','JOB','HIREDATE','DEPTNO'];
	   
	   for(var i=0;i<head.length;i++){
		   var th=document.createElement("th");
		   var contents=document.createTextNode(head[i]);
		       th.appendChild(contents); 
		       trhead.appendChild(th);
	   }	   
	   
	   h2.innerHTML="EmpTable Action";
	   function Emp(empno,ename,sal,job,hiredate,deptno){
		   this.���=empno;
		   this.ename=ename;
		   this.sal=sal;		 
		   this.job=job;
		   this.hiredate=hiredate;
		   this.deptno=deptno;
	   }
	   
	   var emps=[new Emp(7788,'������',8000,'�ǻ�','2000/5/1',20),
		         new Emp(7789,'�¶�',5000,'��ȣ��','2001/5/1',10),
		         new Emp(7789,'����',5000,'��ȣ��','2005/5/1',30),
		         new Emp(7789,'����',5000,'��ȣ��','2009/5/1',40)];
	   console.log(emps);
	   var tbody=document.getElementById("body");
	   for(var i in emps){
		   var tr=document.createElement("tr");
		   var attr=document.createAttribute("class");
		   attr.value="danger";
		   if(i%2==0)
		   tr.setAttributeNode(attr);
		   for(var j in emps[i]){			  
			   var td=document.createElement("td");
			   var textNode=document.createTextNode(emps[i][j]);
			   td.appendChild(textNode);
			   tr.appendChild(td);
		   }
	    tbody.appendChild(tr);
	   }
   }
</script>
</head>

<body>
<button onclick="objectType1()">Student</button>
<button onclick="objectType2()">Emp</button><br><br><br>
<div class="container">
  <h2 id="title"></h2>
  <p  id="p1" style="visibility: hidden;">The .danger class indicates a dangerous or potentially negative action:</p>                                                                                
  <table class="table">
    <thead>
      <tr id="emphead">        
      </tr>      
    </thead>
    <tbody id="body">
      <!-- <tr class="danger">
        <td>1</td>
        <td>Anna</td>
      </tr>   -->   
    </tbody>
  </table>
</div>


</body>
</html>















