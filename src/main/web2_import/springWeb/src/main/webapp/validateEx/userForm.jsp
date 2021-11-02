<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="functions" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
  $(function(){
	  
  });
</script>  
</head>
<body>
   <form:form action="/Web/saveUser.do" method="POST" modelAttribute="user" >
      <table cellpadding="0" cellspacing="0"  width="80%" border="1">         
        <tr>
          <th>NAME</th>
          <td>
          <form:input path="name"/> 
          <font color="red" size="4">
           <form:errors path="name"></form:errors>
          </font>
          </td>
        </tr>
        <tr>
          <th>EMAIL</th>
          <td><form:input path="email"/>
           <font color="red" size="4">
           <form:errors path="email"></form:errors>
          </font>
           </td>
        </tr>
        <tr>
          <th>GENDER</th>
          <td>
            <form:radiobutton path="gender" value="Male" label="Male"/>
            <form:radiobutton path="gender" value="FeMale" label="FeMale"/>
            <font color="red" size="4">
             <form:errors path="gender"></form:errors>
          </font>            
          </td>
        </tr>
        
        <tr>
          <th>ITEM</th>
          <td>
            <form:select path="item">
              <form:option value="USJava">USJava</form:option>
              <form:option value="USOracle">USOracle</form:option>
              <form:option value="USSpring">USSpring</form:option>
              <form:option value="USPython">USPython</form:option>            
            </form:select> 
              <font color="red" size="4">
             <form:errors path="item"></form:errors>
          </font>                     
          </td>
        </tr>
        
        <tr>
          <th>Send</th>
          <td>
            <form:button type='submit'>Send</form:button>             
          </td>
        </tr>
      </table>
   </form:form>

</body>
</html>














